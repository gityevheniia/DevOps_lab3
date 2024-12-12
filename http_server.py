from http.server import BaseHTTPRequestHandler, HTTPServer
import time
import math

def generate_and_sort_array():
    start_time = time.time()
    num_elements = 10**7 
    array = [math.sin(x) for x in range(num_elements)]
    array.sort() 
    elapsed_time = time.time() - start_time
    return array, elapsed_time

class RequestHandler(BaseHTTPRequestHandler):
    def do_GET(self):
        array, elapsed_time = generate_and_sort_array()
        self.send_response(200)
        self.send_header("Content-type", "text/plain")
        self.end_headers()
        self.wfile.write(f"Elapsed time: {elapsed_time:.2f} seconds\n".encode())
        self.wfile.write(f"First 10 sorted values: {array[:10]}\n".encode())
if __name__ == "__main__":
    server = HTTPServer(("0.0.0.0", 8000), RequestHandler)
    print("Server running on port 8000...")
    server.serve_forever()
