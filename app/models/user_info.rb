class UserInfo
  def initialize(username, password,fullname, streetaddress,city, state, postalcode,country,email)
    @username = username
    @password = password
    @fullname = fullname
    @streetaddress = streetaddress
    @city = city
    @state = state
    @postalcode = postalcode
    @country = country
    @email = email
  end
  def username
    @username
  end
  def password
    @password
  end
  def fullname
    @fullname
  end
  def streetaddress
    @streetaddress
  end
  def city
    @city
  end
  def state
    @state
  end
  def postalcode
    @postalcode
  end
  def country
    @country
  end
  def email
    @email
  end
end
