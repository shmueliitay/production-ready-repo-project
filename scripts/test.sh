
#!/bin/bash
set -e  # Exit on any error


echo "Running tests for service1..."
export PYTHONPATH=$(pwd)
pytest microservices/service1/tests/
#PYTHONPATH=microservices pytest microservices/service1/tests/
#pytest microservices/service1/tests/


echo "Running tests for service2..."
export PYTHONPATH=$(pwd)
pytest microservices/service2/tests/
#PYTHONPATH=microservices pytest microservices/service2/tests/
#pytest microservices/service2/tests/


echo "All tests passed!"


# Run the tests for both services using pytest
#echo "Running tests for service1..."
#PYTHONPATH=microservices/service1 pytest microservices/service1/tests/
#pytest microservices/service1/tests/

#echo "Running tests for service2..."
#PYTHONPATH=microservices/service2 pytest microservices/service2/tests/
#pytest microservices/service2/tests/

# Check pytest exit code to determine success/failure
#if [ $? -eq 0 ]; then
#    echo "All tests passed successfully!"
#else
#    echo "Some tests failed."
#    exit 1
#fi
