package bustopic

var (
	Info      Topic = newTopic("info")
	Errors    Topic = newTopic("errors")
	MsgTopics       = Topics{Info, Errors}
)

type (
	Topic  *string
	Topics []Topic
)

func newTopic(t string) *string { return &t }

func IsInTopics(topicStr string) bool {
	for _, t := range MsgTopics {
		if *t == topicStr {
			return true
		}
	}
	return false
}
