# Run this dashboard from the root of the
# github repository:
using Pkg
Pkg.activate(joinpath(pwd(), "BetaTyper"))
Pkg.resolve()
Pkg.instantiate()


DASHBOARD_VERSION = "0.2.5"

# Variables configuring the app:  
#
#  1. location  of the assets folder (CSS, etc.)
#  2. port to run on
# 
# Set an explicit path to the `assets` folder
# on the assumption that the dashboard will be started
# from the root of the gh repository!
DEFAULT_PORT = 8050

using Dash
using DataFrames, UrlDownload
using PolytonicGreek, Unicode, BetaReader


## Clean exit on CRTL+C
Base.exit_on_sigint(false)


#assets = joinpath(pwd(), "assets")
assets = joinpath(pwd(), "BetaTyper", "assets")

println("assets = $assets")

external_stylesheets = ["stylesheet.css"]

#=
app = if haskey(ENV, "URLBASE")
    dash(assets_folder = assets, url_base_pathname = "/BetaTyper/", external_stylesheets = external_stylesheets)
    #dash(assets_foler = "assets", url_base_pathname = "/BetaTyper/", external_stylesheets = external_stylesheets)
else 
    dash(assets_folder = assets, url_base_pathname = "/BetaTyper/", external_stylesheets = external_stylesheets)    
    #dash(assets_folder = "assets", url_base_pathname = "/BetaTyper/", external_stylesheets = external_stylesheets)    
end
=#

app = dash(external_stylesheets = external_stylesheets)

footer_text = dcc_markdown("""Greek Typer was written in Julia 2022 by Christopher Blackwell with code written for the [Homer Multitext]() by Neel Smith. It is licensed under the GPL. Source and issue-tracker at https://github.com/Eumaeus/GreekTyper_Julia.""")


app.layout = html_div(
    style = Dict(
        "padding" => "3em",
    ), 
    id = "main-wrapper"
) do
    html_h1() do 
        html_p("BetaTyper"),
        html_p(id = "app_header_versionInfo",

            "Type Unicode Greek Easily (version 1.0.0)"
        )
    end,
    dcc_markdown( "Type your Greek here, using [Beta Code](https://github.com/Eumaeus/BetaReader.jl/blob/main/character_table.md)."),
    dcc_textarea(id = "betaCodeInput", placeholder = "mh=nin a)/eide qea/, Phlhi+a/dew A)xille/ws", value = "" ),
    dcc_markdown("Unicode output below."),
    html_div(id = "unicodeOutput") do 
        html_span(id = "greekOutput")
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



