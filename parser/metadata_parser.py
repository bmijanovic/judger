from dotenv import load_dotenv
from langchain_openai import ChatOpenAI
from langchain_core.prompts import ChatPromptTemplate
from pathlib import Path
import argparse

load_dotenv()

llm = ChatOpenAI(model="gpt-4o", temperature=0)

java_models = Path("../backend/Judger-Server/src/main/java/org/example/judgerserver/model/")

models_string = ""

for model_path in java_models.rglob('*.java'):
    models_string += model_path.read_text()
    models_string += '\n'


def process_text(text: str, file_path: Path) -> None:

    prompt = ChatPromptTemplate.from_messages(
        [
            ("system", "Ti analiziras presude u Akoma Ntoso 3.0 xml dokumentima, i pravis csv fajl sa vrednostima na zadate atribute redom.  \n"
                +
                "Molim te da izanaliziras ovaj dokument i vratis mi validan csv fajl. Vrati mi validan csv fajl, i ništa drugo. Imas u modelima kako se nazivaju polja i idi tim redom striktno"
                    +
                "JAVA MODELI: \n {models_string} \n"
             ),
            ("user", "{input}")
        ]
    )
    print("Invoking chain...")
    chain = prompt | llm
    response = chain.invoke({"models_string": models_string, "input": text})
    print(response.content)

    Path(f"../judgements/cache-metadata/{file_path.stem}.csv").write_text(str(response.content))
    print("Done!")



def is_metadata_in_cache(file_name: str) -> bool:
    return (Path('../judgements/cache-metadata/') / (file_name + '.csv')).exists()

def main():
    args = argparse.ArgumentParser()
    args.add_argument("-i", help="Input file", type=Path)
    args = args.parse_args()
    input_file : Path = args.i
    if input_file.is_file():
        if not is_metadata_in_cache(input_file.stem):
            text = Path(input_file).read_text()
            process_text(text, Path(input_file))
    else:
        xml_files = list(input_file.rglob("*.xml"))
        for file_path in xml_files:
            if is_metadata_in_cache(file_path.stem): continue
            text = Path(file_path).read_text()
            process_text(text, Path(file_path))




if __name__ == "__main__":
    main()

