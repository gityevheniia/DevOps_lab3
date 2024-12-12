import unittest
from http_server import generate_and_sort_array

class TestHTTPServer(unittest.TestCase):
    def test_execution_time(self):
        _, elapsed_time = generate_and_sort_array()
        self.assertGreaterEqual(elapsed_time, 5, "Execution time is less than 5 seconds")
        self.assertLessEqual(elapsed_time, 20, "Execution time exceeds 20 seconds")

    def test_array_sorting(self):
        array, _ = generate_and_sort_array()
        self.assertTrue(all(array[i] <= array[i+1] for i in range(len(array)-1)), "Array is not sorted")

if __name__ == "__main__":
    unittest.main()
