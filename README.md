# Data Bus

Data Bus is a project that ensures reliable data transmission between various system components. The main message broker
in the project is Apache Kafka.

## Components

The project consists of two main components:

### Data Bus Receiver

Data Bus Receiver is a component that receives messages of various types and publishes them in Kafka. It allows you to
configure which types of messages the system will support, providing flexibility and customization depending
on requirements.

### Data Bus Publisher

Data Bus Publisher is a component that subscribes to messages in Kafka and provides them to consumers via a gRPC
interface. Messages are transmitted in a serialized format, allowing for flexibility in data transmission.

## Functionality

Data Bus provides the following features:

1. Reliable data transmission between system components using Apache Kafka.
2. Flexibility in choosing supported message types.
3. Efficient data transmission through serialized messages.
4. Scalability and high performance due to asynchronous architecture.
5. Ease of integration with other system components via a gRPC interface.

## Installation and Configuration

For instructions on installing and configuring Data Bus components, please refer to the relevant repositories:

- [Data Bus Receiver](https://github.com/MihasBel/data-bus-receiver#getting-started)
- [Data Bus Publisher](https://github.com/MihasBel/data-bus-publisher#getting-started)
