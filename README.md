# GenChattingSupervisor

## TODO_list

1. gen_chatting 구현
  - 클라이언트에서 연결을 하고 채팅을 보내면 연결된 모든 클라이언트들에게 메세지를 보낸다.
2. gen_chatting supervisor 구현
  - 성격이 비슷한 모듈을 하나로 묶어서 관리하기위해 채팅 관련한 모듈을 supervisor로 관리한다.
3. gen_chatting 글로벌 설정
  - 노드끼리 연결시에 각 프로세스가 독립적으로 실행되고있어 gen_chatting을 글로벌 설정하여 하나의 프로세스만 실행되도록 한다.
4. cluster 설정
  - client에서 접속시 Node.connect를 해서 노드끼리의 연결을 해야하는데 자동으로 연결하게끔 해주는 역할을한다.
  - 또 Mix가 실행되는 환경이 dev, release, prod등 서로 다른 환경에서의 노드 연결 방법이 다르기 때문에 이를 제어하는 역할을한다.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `gen_chatting_supervisor` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:gen_chatting_supervisor, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/gen_chatting_supervisor>.

