# Meta Demo
A small application to display the abilities of the squeel and meta_search gems.

## Model Structure

Robots have many parts which have many suppliers which in turn have many manufacturers.

`robots` <-> `parts` <-> `suppliers` <-> `manufacturers`

### Robot

name             - String  
description      - Text

### Part

name             - String  
price            - Decimal  
popularity       - String (must be either 'low', 'medium', or 'high')

### Supplier

name             - String

### Manufacturer

name             - String
