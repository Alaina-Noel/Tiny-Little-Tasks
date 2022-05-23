require_relative 'ruby_238'

class Gadget

  attr_reader :production_number, :apps
  attr_accessor :username

  def initialize(username, password)
    @usernamem = username
    @password = password
    @production_number = generate_production_number
    @apps = []
  end

  def to_s
    "Gadget #{@production_number} has the username #{@username}.
    It is made frmo the #{self.class} class and it has the ID
    #{self.object_id}."
  end

  def install_app(name)
    app = AppStore.findapp(name)
    @apps << app unless @apps.include?(app)
  end

  def delete_app(name)
    app = apps.find {|installed_app| installed_app.name == name}
    apps.delete(app) unless app.nil?
  end

private

  def generate_production_number
    start_digits = rand(100..999)
    end_digits = rand(100..999)
    alphabet = ("A".."Z").to_a
    middle_digits = "222"
    5.times {middle_digits << alphabet.sample }
    "#{start_digits}-#{middle_digits}-#{end_digits}"
  end

end


g = Gadget.new("Alaina", "bestpasswordever")
p g
p g.apps
