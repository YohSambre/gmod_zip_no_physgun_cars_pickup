local function NoCarsPickup(ply, ent)
	if ent:IsVehicle() and not ply:IsAdmin() then -- ent:GetClass():lower() == "prop_vehicle_jeep"
		return false
	end
end

hook.Add("PhysgunPickup", "NoPhysgunCarsPickup", NoCarsPickup)
