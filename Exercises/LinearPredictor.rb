class LinearModel
  attr_reader :slope, :y_intercept

  def initialize(learning_rate = 0.1, epoch = 100000)
      # Initialize y_intercept & slope
      @y_intercept = 0
      @slope = 1

      # How much will the error affect the change in parameters
      @learning_rate = learning_rate

      # How many times will we iterate through the dataset
      @epoch = epoch
  end
  
  def predict(x)
    # y = w1 * x1 + b
      return @slope * x + @y_intercept
  end

  def fit(dataset)
    @epoch.times do
      dataset.shuffle.each do |data_point|
        # Make a guess with current y-intercept & slope
        guess = predict(data_point[:input])

        # Calculate the error of that guess
        error = data_point[:output] - guess

        # Update y-intercept & slope using "stochastic gradient descent"
        @slope = @slope + ((error * data_point[:input]) * @learning_rate)
        @y_intercept = @y_intercept + (error * @learning_rate)
      end
    end
  end
end


dataset = [
  #{input: mass(g), output: length(cm)}
  {input: 0.50, output: 56}, 
  {input: 0.85, output: 119},
  {input: 0.99, output: 140}, 
  {input: 1.30, output: 190},
]
  
# Initialize our linear model
string_length_predictor = LinearModel.new()

# Ask it to fit it's y-intercept and slope to our dataset
string_length_predictor.fit(dataset)

# Output the results
predictions = dataset.map do |data_point|
  string_length_predictor.predict(data_point[:input]).round(3)
end

puts "Actual values: #{dataset.map{|point| point[:output]}}"
puts "Predictions: #{predictions}"
puts "Slope: #{string_length_predictor.slope}"
puts "y-intercept: #{string_length_predictor.y_intercept}"