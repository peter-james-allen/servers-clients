require 'socket'
require_relative 'notelist'

server = TCPServer.new(2345)

socket = server.accept

they_said = ''
note_list = NoteList.new

while they_said != 'quit' do

  socket.puts "\n1. Add Note\n2. Print Note"
  selection = socket.gets.chomp

  case selection
  when '1'
    socket.puts "\nEnter note"
    note_list.add(socket.gets.chomp )
  when '2'
    socket.puts note_list.notes
  end

end

socket.close