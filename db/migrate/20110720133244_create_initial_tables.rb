class CreateInitialTables < ActiveRecord::Migration
  def self.up
    create_table :robots do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table :parts do |t|
      t.string :name
      t.decimal :price
      t.string :popularity

      t.timestamps
    end

    create_table :suppliers do |t|
      t.string :name

      t.timestamps
    end

    create_table :manufacturers do |t|
      t.string :name

      t.timestamps
    end

    create_table :robot_parts do |t|
      t.references :robot
      t.references :part
    end

    create_table :supplier_parts do |t|
      t.references :supplier
      t.references :part
    end

    create_table :supplier_manufacturers do |t|
      t.references :manufacturer
      t.references :supplier
    end

    add_index :robots, :id
    add_index :parts, :id
    add_index :suppliers, :id
    add_index :manufacturers, :id

    add_index :robot_parts, :robot_id
    add_index :robot_parts, :part_id

    add_index :supplier_parts, :supplier_id
    add_index :supplier_parts, :part_id

    add_index :supplier_manufacturers, :manufacturer_id
    add_index :supplier_manufacturers, :supplier_id

  end

  def self.down
    drop_table :supplier_manufacturers
    drop_table :supplier_parts
    drop_table :robot_parts
    drop_table :manufacturers
    drop_table :suppliers
    drop_table :parts
    drop_table :robots
  end
end
