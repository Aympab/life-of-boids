if(EXISTS "/data/build/tests/test_bird[1]_tests.cmake")
  include("/data/build/tests/test_bird[1]_tests.cmake")
else()
  add_test(test_bird_NOT_BUILT test_bird_NOT_BUILT)
endif()