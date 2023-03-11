import gleeunit
import gleeunit/should
import a.{Cat, cat_to_json}

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  1
  |> should.equal(1)
}

pub fn cat_to_json_test() {

	let cat =  Cat(name: "Nubi", lives: 100, flaws: "hi)

	let cat_json = cat 
		|> cat_to_json()


	should.equal(cat_json, expected_json) 
}


pub fn json_to_cat_teset() {

	// let cat_json = "{\"name\":\"Nubi\",\"lives\":100,\"flaws\":null}"
	let cat_json= "" 
	let expected_cat =  Cat(name: "Nubi", lives: 100)

	should.equal(cat_json, expected_cat)

}
