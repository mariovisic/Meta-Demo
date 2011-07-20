# Meta Demo
A small application to display the abilities of the squeel and meta_search gems.

## Model Structure

A robot has many parts which have many suppliers which have many manufacturers.

`robot` <-> `parts` <-> `suppliers` <-> `manufacturers`

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
