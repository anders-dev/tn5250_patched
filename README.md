tn5250 client patched to ignore protected fields

# Build
docker build -t 5250_patched .
# Run (-it is important for getting the terminal to work)
docker run -it 5250_patched
