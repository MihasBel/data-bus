package bustopic

var (
	Info   Topic = newTopic("info")
	Errors Topic = newTopic("errors")
)

type (
	Topic *string
)

func newTopic(t string) *string { return &t }
