import Config

case Mix.env() do
  :dev -> config(:gen_chatting_supervisor, node_env: :dev)
end
