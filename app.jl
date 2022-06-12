using Dash
using DataFrames, UrlDownload
using PolytonicGreek, Unicode, BetaReader

external_stylesheets = ["assets/stylesheet.css"]

app = dash(external_stylesheets = external_stylesheets)

footer_text = dcc_markdown("""Greek Typer was written in Julia 2022 by Christopher Blackwell with code written for the [Homer Multitext]() by Neel Smith. It is licensed under the GPL. Source and issue-tracker at https://github.com/Eumaeus/GreekTyper_Julia.""")


app.layout = html_div(
    style = Dict(
        "padding" => "3em",
    ), 
    id = "main-wrapper"
) do
    html_h1() do 
        html_p("Greek Typer"),
        html_p(id = "app_header_versionInfo",
            "version 1.0.0"
        )
    end,
    dcc_markdown("Type your Greek here, using [Beta Code](https://github.com/Eumaeus/BetaReader.jl)."),
    dcc_textarea(id = "betaCodeInput", placeholder = "mh=nin a)/eide qea/, Phlhi+a/dew A)xille/ws", value = "" ),
    dcc_markdown("Unicode output below."),
    html_div(id = "unicodeOutput") do 
        html_a(id = "greekOutput")
    end,
    dcc_clipboard(
        target_id = "unicodeOutput",
        title = "copy",
        style = Dict(
            "display" => "inline-block",
            "fontsize" => 40,
            "verticalAlign" => "top"
        )
    ), 

    html_footer(footer_text)

end

callback!(app, Output("greekOutput", "children"), Input("betaCodeInput", "value")) do input_value
    "$(BetaReader.transcodeGreek(input_value))"
end




run_server(app, "0.0.0.0", debug=true)
