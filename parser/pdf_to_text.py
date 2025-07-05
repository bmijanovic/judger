from langchain_community.document_loaders import PyMuPDFLoader
from pathlib import Path


def extract_main_text(pdf_path):
    loader = PyMuPDFLoader(str(pdf_path))
    pages = loader.load()

    stop_keywords = [
        'obrazlozenje',
        'obrazloženje',
        'o b r a z l o ž e nj e',
        'o b r a z l o ž e n j e',
    ]

    combined_text = []
    for page in pages:
        page_content = page.page_content.lower()
        if any(keyword in page_content for keyword in stop_keywords):
            for keyword in stop_keywords:
                if keyword in page_content:
                    cutoff = page_content.index(keyword)
                    combined_text.append(page.page_content[:cutoff])
                    break
            break
        else:
            combined_text.append(page.page_content)

    return '\n'.join(combined_text)


def convert_pdfs_to_txt(input_dir, output_dir):
    input_path = Path(input_dir)
    output_path = Path(output_dir)
    output_path.mkdir(parents=True, exist_ok=True)

    for pdf_file in input_path.rglob("*.pdf"):
        content = extract_main_text(pdf_file)
        output_file = output_path / f"{pdf_file.stem}.txt"
        output_file.write_text(content)


if __name__ == '__main__':
    convert_pdfs_to_txt("../judgements/pdf", "../judgements/text2")
