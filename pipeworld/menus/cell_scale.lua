local set =
{
	0.1,
	0.25,
	0.5,
	0.75,
	1,
	2
}

return
function(ctx, row, cell)
	local res = {}

	for _, v in ipairs(set) do
		table.insert(res, {
			label = string.format("%.2fx", v),
			handler = function()
				cell.scale_factor[1] = v
				cell.scale_factor[2] = v
				row:invalidate()
			end
		})
	end

	return res
end
