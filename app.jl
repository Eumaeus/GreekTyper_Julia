using Dash
using DataFrames, UrlDownload
using PolytonicGreek, Unicode, BetaReader

external_stylesheets = ["assets/stylesheet.css"]

app = dash(external_stylesheets = external_stylesheets)

app.layout = html_div(
    style = Dict(
        "padding" => "3em",
    ), 
    id = "main-wrapper"
) do
    html_h1("Greek Typer"),
    dcc_markdown("Type your Greek here. [Here's a link](https://github.com/Eumaeus/BetaReader.jl)."),
    html_label("Text Area"),
    dcc_textarea(id = "betaCodeInput", placeholder = "mh=nin a)/eide qea/, Phlhi+a/dew A)xille/ws", value = "" ),
    dcc_markdown("Unicode output below; click to copy."),
    html_div(id = "unicodeOutput") do 
        html_a(id = "greekOutput")
    end

end

callback!(app, Output("greekOutput", "children"), Input("betaCodeInput", "value")) do input_value
    "$(BetaReader.transcodeGreek(input_value))"
end

run_server(app, "0.0.0.0", debug=true)
