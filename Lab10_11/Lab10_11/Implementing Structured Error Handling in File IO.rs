use std::fs::{self, File}; 
use std::io::{self, Read, Write}; 
 
fn main() { 
    match process_file("input.txt", "output.txt") { 
        Ok(_) => println!("File processed successfully."), 
        Err(e) => println!("Error: {}", e), 
    } 
} 
 
fn process_file(input_path: &str, output_path: &str) -> io::Result<()> { 
    let mut file = File::open(input_path)?; 
    let mut contents = String::new(); 
    file.read_to_string(&mut contents)?; 
 
    if contents.is_empty() { 
        println!("The input file is empty."); 
    } 
 
    let mut output_file = File::create(output_path)?; 
    output_file.write_all(contents.as_bytes())?; 
 
    Ok(()) 
} 
 