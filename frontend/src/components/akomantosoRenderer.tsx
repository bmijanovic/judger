import React, { useEffect, useState } from "react";

interface AkomaNtosoRendererProps {
    xmlString: string;
}

const renderContent = (node: ChildNode | null): React.ReactNode => {
    if (!node) return null;

    if (node.nodeType === Node.TEXT_NODE) {
        const trimmed = node.textContent?.trim();
        return trimmed ? trimmed : null;
    }

    if (node.nodeType === Node.ELEMENT_NODE) {
        const element = node as Element;
        const tag = element.tagName.toLowerCase();

        // Add keys when mapping children to avoid React warning
        const children = Array.from(element.childNodes)
            .map((childNode, index) => {
                const rendered = renderContent(childNode);
                if (!rendered) return null;
                return <React.Fragment key={index}>{rendered}</React.Fragment>;
            })
            .filter(Boolean);

        switch (tag) {
            case "act":
                return <div className="act">{children}</div>;

            case "body":
                return <div className="body">{children}</div>;

            case "chapter":
                return (
                    <section className="chapter" key={element.getAttribute("eId") || undefined}>
                        {children}
                    </section>
                );

            case "num":
                return children

            case "heading":
                return <h2 className="heading">{children}</h2>;

            case "article":
                return (
                    <article className="article" key={element.getAttribute("eId") || undefined}>
                        {children}
                    </article>
                );

            case "paragraph":
                return (
                    children
                );

            case "point":
                return (
                    <li className="point" key={element.getAttribute("eId") || undefined}>
                        {children}
                    </li>
                );

            case "content":
                return <div className="content">{children}</div>;

            case "p":
                return <p>{children}</p>;

            case "section":
                return (
                    <section className="section" key={element.getAttribute("eId") || undefined}>
                        {children}
                    </section>
                );

            default:
                return <div className={tag}>{children}</div>;
        }
    }

    return null;
};

export const AkomaNtosoRenderer: React.FC<AkomaNtosoRendererProps> = ({ xmlString }) => {
    const [xmlDoc, setXmlDoc] = useState<Document | null>(null);

    useEffect(() => {
        if (xmlString) {
            const parser = new DOMParser();
            const doc = parser.parseFromString(xmlString, "application/xml");
            setXmlDoc(doc);
        }
    }, [xmlString]);

    if (!xmlDoc) return <div>Loading...</div>;

    const actNode = xmlDoc.getElementsByTagName("act")[0];
    if (!actNode) return <div>Invalid XML format: no &lt;act&gt; element found.</div>;

    return <div className="akn-renderer" style={{color:"black",width:"100%"}}>{renderContent(actNode)}</div>;
};
