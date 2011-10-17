gmcs -t:library Life.cs
if [ $? -eq 0 ]; then
  gmcs -t:library -r:Life.dll -r:nunit.framework.dll LifeTest.cs
  if [ $? -eq 0 ]; then
    nunit-console -nologo LifeTest.dll
  fi
fi

