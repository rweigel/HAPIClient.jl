using Pkg

if !("HAPIClient" in keys(Pkg.dependencies()))
	#Pkg.add("HAPIClient")
end

using HAPIClient

# Retrieve data for specific parameters within a time range
parameters = "Magnitude,BGSEc"
start_time = "2001-01-01T05:00:00Z"
end_time = "2001-01-01T06:00:00Z"
data = hapi(CDAWeb, dataset, parameters, start_time, end_time)

println(data[1].values)


if 0
  # Alternative method using path format
  data = get_data("CDAWeb/AC_H0_MFI/Magnitude,BGSEc", start_time, end_time)
  using Plots

  Magnitude = data[1]
  BGSEc = data[2]

  print(BGSEc)
  # List the numbers in BGSEc
  for value in BGSEc
    println(value)
  end

  # Example with CSA server
  #csa_dataset = "C4_CP_FGM_FULL"
  ##csa_parameters = "B_vec_xyz_gse,B_mag"
  #csa_start = DateTime(2001, 6, 11, 0, 0, 0)
  #csa_end = DateTime(2001, 6, 11, 0, 1, 0)
  #csa_data = hapi(CSA, csa_dataset, csa_parameters, csa_start, csa_end)
end