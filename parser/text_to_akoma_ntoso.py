import pathlib
from dotenv import load_dotenv
from langchain_openai import ChatOpenAI
from langchain_core.prompts import ChatPromptTemplate
import argparse

load_dotenv()

llm = ChatOpenAI(model="gpt-4o", temperature=0)

presuda = pathlib.Path("../judgements/akoma-ntoso/K855-2021.xml").read_text()


def process_text(text, file_path):
    conclusion_example = """
    _____
    Na osnovu
        <ref href="/krivicni#art_75">
            čl. 75
        </ref>
        i
        <ref href="/krivicni#art_258">
            čl. 258 st. 5 Krivičnog zakonika Crne Gore
        </ref>
        sud izriče...
    _____
    """
    prompt = ChatPromptTemplate.from_messages(
        [
            ("system", "Ti prevodiš tekst o presudama u Akoma Ntoso 3.0 xml dokumente, primer ti je dat ispod.\n"
             +
             "PRIMER: \n {presuda} \n"
             +
             "Molim te da prevedeš ovaj tekst u Akoma Ntoso XML format. Vrati mi validan XML dokument, i ništa drugo."
             "OBAVEZNO koristiti reference kad se spominje 'Na osnovu' u conclusion, kao npr. \n {conclusion_example} \n"
             ""),
            ("user", "{input}")
        ]
    )
    print("Invoking chain...")
    chain = prompt | llm
    response = chain.invoke({"presuda": presuda, "conclusion_example": conclusion_example, "input": text})
    print(response.content)

    pathlib.Path(f"../judgements/openai-akoma-ntoso/{file_path.stem}.xml").write_text(str(response.content))
    print("Done!")


def main():
    args = argparse.ArgumentParser()
    args.add_argument("-i", help="Input file")
    args = args.parse_args()
    if args.i:
        text = pathlib.Path(args.i).read_text()
        process_text(text, pathlib.Path(args.i))
    else:
        text_files = list(pathlib.Path("./text").rglob("*.txt"))
        for text_file in text_files[1:5]:
            text = pathlib.Path(text_file).read_text()
            process_text(text, text_file)


if __name__ == "__main__":
    main()

