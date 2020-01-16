require_relative 'common'
require_relative 'intcode_computer'

if $PROGRAM_NAME == __FILE__
  program = read_input_columns('05')[0].map(&:to_i)

  computer = IntcodeComputerV2.new(program)
  computer.input = 1
  computer.execute
  p "1) Diagnosis program output (Input 1): #{computer.output}"

  computer = IntcodeComputerV2.new(program)
  computer.input = 5
  computer.execute
  p "2) Test program output (Input 5): #{computer.output}"
end
