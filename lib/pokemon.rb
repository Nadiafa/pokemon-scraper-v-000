class Pokemon
  attr_accessor :id, :name, :type, :db 
  
  def initialize(id:, name:, type:, db:)
    @id   = id
    @name = name
    @type = type
    @db   = db
  end 
  
  def save
    sql = "INSERT INTO pokemons (name, type) VALUES (?, ?)"
    DB[:conn].execute(sql, self.name, self.type)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM pokemons")[0][0]
  end
  
end 













































# class Pokemon
#   attr_accessor :id, :name, :type, :db, :hp
  
#   def initialize(id:, name:, type:, hp: nil, db:)
#     @id   = id 
#     @name = name 
#     @type = type
#     @db   = db
#     # @hp   = hp
#   end 
  
#   def self.save(name, type, db)
#     db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
#   end
  
#   def self.find(id, db)
#     pk_details = db.execute("SELECT * FROM pokemon WHERE id = ?", id).flatten
#     Pokemon.new(id: pk_details[0], name: pk_details[1], type: pk_details[2], hp: pk_details[3], db: db)
#   end 
  
#   # def alter_hp(hp, db)
#   #   self.hp = hp 
#   #   db.execute("UPDATE pokemon SET hp = ? WHERE id = self.id")
#   # end 
# end



