defmodule Servy.Conv do
	defstruct 	method: "", 
				path: "", 
				params: %{},
				headers: %{},
				resp_content_type: "text/html",
				resp_body: "", 
				status: nil 

	def full_status(conv) do
		"#{conv.status} #{status_reason(conv.status)}"
	end

	defp status_reason(code) do
		%{
			200 => "OK",
			201 => "Created",
			401 => "Unathorized",
			403 => "Forbidden",
			404 => "Not found",
			500 => "Internal server error",
		}[code]
	end
end