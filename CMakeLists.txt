cmake_minimum_required (VERSION 2.8.3)
project("Hello, Git!")

add_executable(helloGit 
    "source/helloGit.cpp"
    )

target_link_libraries(helloGit ${ALL_LIBS})
install(TARGETS helloGit DESTINATION "${PROJECT_SOURCE_DIR}/bin/")
