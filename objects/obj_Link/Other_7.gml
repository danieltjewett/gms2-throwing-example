#region pickup

if (holdingState == "picking")
{
	holdingState = "holding";
}
else if (holdingState == "throwing")
{
	holdingState = false;
}

#endregion