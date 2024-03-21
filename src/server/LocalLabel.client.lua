local status = game.ReplicatedStorage:WaitForChild('Status')

while true do
	wait()
	script.Parent.Text = status.Value
end