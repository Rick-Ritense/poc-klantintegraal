# klantintegraal

This folder will contain the application that will expose wundergraph.

## Getting started

1. Checkout and start the following application: https://github.com/laurens-ritense/integraal-klantbeeld-mock-api
   * This application will provide the mock-api with an actual server to retrieve information from
2. Install the dependencies and run the application using this one command: 

```shell
npm install && npm start
```

After a while, a new browser tab will open,
and you can start exploring the application.
If no tab is open, navigate to [http://localhost:3001](http://localhost:3000).

Running WunderGraph will automatically introspect the data-source and generate an API for you.
You can add more Operations (e.g. Queries or Mutations) by adding more "\*.graphql" files to the directory `./wundergraph/operations`.
Each file becomes an Operation. The Operation name is not relevant, the file name is.

## Add datasources

To add datasources Wundergraph needs to know the api specification of the datasource. 
Provide the datasource as a json to `.wundergraph/specs`

## Themes

A theme is a collection of one or more datasources to serve a single cohesive datasource
to use in a single page of the frontend application

## Learn More

Read the [Docs](https://wundergraph.com/docs).
