name: Simple Workflow

on:
    workflow_dispatch:
        inputs:
              user_input:
                description: 'input your variable:'  
                required: true
                default: 'test'
jobs:

    TIMESTAMP:
        runs-on: ubuntu-latest

        steps:
        - uses: actions/checkout@v2
        - name: echo user input
          run: | 
            echo ${{ github.event.inputs.user_input }}" >> output.txt
        - name: 1.3 DOWNLOAD ARTIFACT
          uses: actions/upload-artifact@v2
          with:
              name: output.txt
              path: /home/runner/work/devops-school/devops-school/output.txt
