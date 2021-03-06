require 'orphic/cli/sprites/cursor'
require 'orphic/cli/sprites/paji'
require 'orphic/cli/sprites/flash'

module Orphic
  module OrphicCli
    class Spools < Thor
      desc "spools", "Access varying sprites and/or districts with Cursor and Paji."
      long_desc <<-SPOOLS
        Commands for a specific SPOOL.

        View your current SPOOL by passing a SPOOL argument, use <Cursor> and <Paji> subcommands for accessing different SPOOLs.
      SPOOLS
      def spools( viewSpool )
        # implement viewSpool
        CLI::UI::Frame.open( "Spool :: " + viewSpool ) do
          puts "#{viewSpool}"
        end
      end
      desc "spools Cursor", "Access a spool with Cursor"
      subcommand "Cursor", Orphic::OrphicCli::Cursor
      desc "spools Paji", "Access a spool with Paji"
      subcommand "Paji", Orphic::OrphicCli::Paji
      desc "spools Thread Flash", "Threads atomize obtuse objects, Flash follows homeostatic patterns. Paired with Cursor or Paji."
      subcommand "Thread Cursor", Orphic::OrphicCli::Thread
      # subcommand "Thread Paji", Orphic::OrphicCli::Thread::Paji
    end
  end
end
