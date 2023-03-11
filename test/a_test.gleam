import gleeunit
import gleeunit/should
import a.{Cat, cat_to_json, json_to_cat}

pub fn main() {
  gleeunit.main()
}

// gleeunit test functions end in `_test`
pub fn hello_world_test() {
  1
  |> should.equal(1)
}

pub fn cat_to_json_test() {

	let cat =  Cat(name: "Nubi", lives: 100, flaws: "hi") 

	let cat_json = cat 
		|> cat_to_json()


	should.equal(cat_json, cat_json) 
}


pub fn json_to_cat_test() {

	let cat_json = "{\"name\":\"Nubi\",\"lives\":100,\"flaws\":null}"
	let expected_cat =  Cat(name: "Nubi", lives: 100, flaws: "None")

	let actual_cat = 
		cat_json 	
		|> json_to_cat() 

	case actual_cat {
	   	Ok(cat) -> {
			should.equal(expected_cat,cat)
			True 
		} 
		_ -> { 
			False
		}

	}
}
