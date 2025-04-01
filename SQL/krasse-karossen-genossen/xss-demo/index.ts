import { serve } from "bun";

let comments = [
  "Hallo",
  "buxtehude",
  "Ich grüße meine Omi!"
];

// XSS-Mitigation -> Transformiere alles was Browser als Code identifizieren und asuführen würde in die String-Variante um
const escapeHTML = (rawHtml: string) => {
  let result = rawHtml.replaceAll("&","&amp;");
  result = result.replaceAll("<","&lt;");
  result = result.replaceAll(">","&gt;");
  result = result.replaceAll("'","&#x27");
  result = result.replaceAll('"', '&quot;');
  return result;
}

const server = serve({
  port: 42069,
  async fetch(req) {
    const url = new URL(req.url);
    if (url.pathname === "/") {
      return new Response(`
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>XSS-Demo</title>
          <link
  rel="stylesheet"
  href="https://cdn.jsdelivr.net/npm/@picocss/pico@2/css/pico.min.css"
>
        </head>
        <body class="container">
          <main>
            <h1>Hinterlasse einen Kommentar</h1>
            <form action="/submit" method="post">
              <label>
                Kommentar-Text:
                <textarea name="comment-text" rows="4" cols="50" required></textarea>
              </label>
              <br>
              <button type="submit">Abschicken</button>
            </form>
            <h2>Kommentare:</h2>
            <ul class="comment-list">
              ${comments.map(comment => {
                return (
                  `<li>${comment}</li>`
                )
              }).join("\n")}
            </ul>
          </main>
        </body>
        </html>  
            `, {
              headers: {
                "Content-Type": "text/html"
              }
            });
    } else if (url.pathname === "/submit" && req.method === "POST") {
      // handle form
      const formdata = await req.formData();
      // Hier könnte XSS auftreten, wenn wir nicht vorsichtig sind, und den User-Input überprüfen!
      let newComment: string = escapeHTML(
        formdata.get("comment-text")!.toString());
      console.log(newComment);
      comments = [...comments, newComment];
      return Response.redirect("/", 301);
    } else {
      return new Response("ERR: No Route like that.", {
        status: 404
      });
    }
  }
});

console.log(`Listening on http://localhost:${server.port} ...`);