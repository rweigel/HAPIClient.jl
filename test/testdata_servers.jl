using HAPIClient

# Define server, dataset, parameters, and time range
server = "http://hapi-server.org/servers/TestData2.0/hapi"
dataset = "dataset1"
parameters = "scalar"
start_time = "1970-01-01"
stop_time = "1970-01-01T00:00:11"

data = hapi(server, dataset, parameters, start_time, stop_time)
