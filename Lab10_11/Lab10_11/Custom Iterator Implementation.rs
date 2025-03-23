struct EvenNumbers { 
    current: u32, 
    limit: u32, 
} 
 
impl Iterator for EvenNumbers { 
    type Item = u32; 
 
    fn next(&mut self) -> Option<Self::Item> { 
        if self.current > self.limit { 
            None 
        } else { 
            let result = self.current; 
            self.current += 2; 
            Some(result) 
        } 
    } 
} 
 
fn main() { 
    let even_numbers = EvenNumbers { current: 2, limit: 20 }; 
    for num in even_numbers.take(10) { 
        println!("{}", num); 
    } 
} 
