module Byebug
  #
  # Tests entering Pry from within Byebug.
  #
  class PryTestCase < TestCase
    def setup
      interface.stubs(:kind_of?).with(LocalInterface).returns(true)

      super
    end

    def test_pry_command_starts_a_pry_session_if_pry_installed
      PryCommand.any_instance.expects(:execute)

      enter 'pry'
      debug_code(minimal_program)
    end

    def test_autopry_calls_pry_automatically_after_every_stop
      skip('for now')
    end
  end
end
