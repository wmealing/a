import gleam/io
import gleam/json.{object, string, int, null}
import gleam/dynamic 


pub type Cat {
  Cat(name: String, lives: Int, flaws: String)
}


pub fn cat_to_json(cat: Cat) -> String {
  object([
    #("name", string(cat.name)),
    #("lives", int(cat.lives)),
    #("flaws", string(cat.flaws) )
  ])
  |> json.to_string
}

pub fn json_to_cat(data: String) {

  let cat_decoder = dynamic.decode3(
    Cat,
    dynamic.field("name", of: dynamic.string),
    dynamic.field("lives", of: dynamic.int),
    dynamic.field("flaws", of: dynamic.string) 
  )

  let d = json.decode(from: data, using: cat_decoder)
  io.debug d

}

pub fn main() {
  io.println("Hello from a!")
}
