*** Settings ***
Library         SeleniumLibrary
Library         Collections
Library         RequestsLibrary
Library         OperatingSystem
Library         String
Library         BuiltIn

Variables       ../resources/test_data.yaml

Resource        ../keywords/keyword.robot