--[[
	� 2013 CloudSixteen.com do not share, re-distribute or modify
	without permission of its author (kurozael@gmail.com).
--]]

Clockwork.database = Clockwork.kernel:NewLibrary("Database");

-- A function to begin a database update.
function Clockwork.database:Update(tableName) end;

-- A function to begin a database insert.
function Clockwork.database:Insert(tableName) end;

-- A function to begin a database select.
function Clockwork.database:Select(tableName) end;

-- A function to begin a database delete.
function Clockwork.database:Delete(tableName) end;

-- Called when a MySQL error occurs.
function Clockwork.database:Error(errText) end;

-- A function to query the database.
function Clockwork.database:Query(query, Callback, flag, bRawQuery) end;

-- A function to get whether a result is valid.
function Clockwork.database:IsResult(result) end;

-- A function to make a string safe for SQL.
function Clockwork.database:Escape(text) end;

-- Called when the database is connected.
function Clockwork.database:OnConnected() end;

-- Called when the database connection fails.
function Clockwork.database:OnConnectionFailed(errText) end;

-- A function to connect to the database.
function Clockwork.database:Connect(host, username, password, database, port) end;

--[[
	EXAMPLE:
	
	local myInsert = Clockwork.database:Insert();
		myInsert:SetTable("players");
		myInsert:SetValue("_Name", "Joe");
		myInsert:SetValue("_SteamID", "STEAM_0:1:9483843344");
		myInsert:AddCallback(MyCallback);
	myInsert:Push();
--]]

CloudAuthX.External("aqYKZEqX9xj1xUsnhXSvMdMBfYBC2yTpjzlSEUjrR+QMRBWP5yr08humkXs3FR7hSjmfD7PDIUiIvpyf5Lpwo60XLU9GZtqKkm+7WrYfjI/WG5heZ1vbj1PKIUjgF7kzdy2Z+XOX2b9yCqJ5xGOKSSNAEjL8MtQo31uYwB/+uLppvP8SkIse8G+WhSTKrDUyDvrUcZjYsNyhFzXRcRkeaToC229fZHwaPqMUebdxQh6mwVMit6tflx8Y2AOEiUElpqQm95XRzckcxGZjbIRQbYKs/Aa1c0jf1d/Zc5km/5sAmEFrlvEz6IEK4nlKmUisHvd6JL/NPX1Ojjg0RhV5dRjLRD8xa66oilOScJnHeFrmpom6CtYh73OVOuBkAF9v83ADo3/AQSZkTl2KuU4n3DfP+YNi0Yae/NQiLAVOtSa4fwZ6OCzybXBmUvpUMGawNMQRMm1Q75Ihe0GbSeq8401SFolRyK7B+X1NQBv8sJFHrE8FmPnNvKb7y4M+vph1oCAFDQ101hcJZBecepzwnwcZMINL8YNcZh46BQGdZAgo1euP/gMcwH09n4+bfxAqNMQRMm1Q75Ihe0GbSeq841wELn2zr+WkRXL8KlUQSb+aBqho6IqhtTr1etJFE1MvBghBJdzai6WUS4d6nsxAXSPchM1I46luyiLTbS3AqUx1Y4l2iiu2WOfRnDEZdldwZEZiE3DE3uWXXOSN8upVMVe1lha6e/KJkfsDc7rAv6NIk6eQkDBUFJB6X9mtq61nLf0NLNsqLC6DTw15nwyHTZdmR8wwfUHatXrrZFGo7p6c7oW6eSS2skG/ntSBqok+ADioHb+KRLldWfs5p582pI0DWiryLdX/wvPWY16WdocYpZ+c+dpFlM1aQowHEsVjBghBJdzai6WUS4d6nsxAXSPchM1I46luyiLTbS3AqUzp2mlzoQ2RB6iJpgoSnI56nRt4hLqZ6XTWbQJDX4zEnmj/wZTCO1QWBhFvR5e7oRnL40KVpwyO5otMcDxSVhwrB1moGgCgfd19e2QhPfjm8G+/hy4ADxrmcYFbuN9OcCksjatEaN0nQBC9RZnBR0IdThMEwf9UXxNZPFSDj+k569B1a24sevT2P2tsSBf7hQpqtcT9/mCmmW4QxbP2HSTwFXgMNz6BJVB+iHcaiFkk1PD6WhJINyq82Q41iwabgDWUtWr5IO0rM45489bUT6/lmNPzCGUDpG1bhOCtse4D1EVjdhBo5pJY2mgv6MZeQpX1gG5XJLruOsK4vx6QkoiwhQLBTQc9H11svhH2YehnORFcD0jpGKfzRhKSwOP68R4Ydp1yvUXtqL7pvMTIQMJG0Nexale6FnzBfDnZu80jhg/dCnl5ecI8qrGTO19sVp0zTIGXEZvqAR2aGQSlK6z7vF8cjEBv4I8C8zAjQc6PcU1aKR7i05kMXYpfgTnA2/FSIdJPy6naOwJdeV/PHYYI0vUJJe0dvytTOYnxpERk9Ef8FVNbx3crjHvrug6z6Dw20QNrFPKy7YtBooubR9RpjRaZrTnqphjQWLpTZh0KEgzySyvw6zWsx3vdGFtY70AWVvv3Gnq5hYCb0q1ySrsQGLvWqX2UwVDOpwCpjdgwTmjBgFQDhcT1U3wEicoS3MgSvb9ECl+ykw9fYF/qDNNQF8XDaepVahXQrHxrvlkRQC+3maGBHFU3Q+Y0t948wI9Om6woCNfFS6DSJlTymnc9GLvWqX2UwVDOpwCpjdgwTmjBgFQDhcT1U3wEicoS3MhHdSZsZAo1h+4HtXIdET9wHZEydaYcDfJszQKmKXQ1o8KVNMMFDWLp3ZH/HyuZV9WWjNfDWqHNtIZ4zLzubm+zV1xfz7uBr2UhGPt45L+Zi7ERhE8B3XZ0fLDCfNJqrUbSgwvBkEbV7sGlSzAALPPJkDirwSi945JIEFLuK4nZBXzoWjzK8P52k+ZRUUFHNOcb1mEmNAigu1SVEpOQsmfsnMY5nW/AKwoSOXfViIzQbpvhV3lZGiq+YqUWlfA3RR9Gm4XNlfje71AioteKjdjfE94yP7yY08Kf7jLKltT8q2w/SPBh0aWWI2iXXT2AlYL64LAlEc0wWO+YJ8yykOgHLXuFFl1/ElbxI1AJ9Qjf/dmJiwR0dRumiQKzNVS0MBP0VQnrZpuNgi9tpwyZrrwmHgGaPQg6ALkvd2oH1UUUT8rBT6k0eTFep7757zbY/L//CcrHaqMnt4arnYO9zJJI0ecU1/0bSJkR8TgFzztA8klDE4GjdTz0eXvn0wC7Hn6XiC7wWvXCWYGlSCkB/Q07wvVCC+nzO6U1vIGk2LZjDFwF/ulwPjReJrJcx68seegte4UWXX8SVvEjUAn1CN/9RB7PZFmxIGSSsis/H1czpNFk7sCkkCOGt8dhCPXB66d0XDpwLIz6a1UI73oBcPmeGG12tmvBbtlHn1GjZiPARg8E9VlxxaoZwhvdn18fhy0rjsIdMD+m0aqMf6n5IGB1cfLtFaN4dI6zW5KBP/X4BvBgkFR5nd+4fqQ3H+wMH/p4e01obc8tn/C+KgXMRV1GRLL47rsYWfxQt4b3H4Abx4ugTV01vEO01ijS84eUUKf6vc/u0xFSkbz0ElJVQt+OXkI8Ts4BWF3JlmGYOLTQ8AC2pA2E7TbJe0ZZ7rsqXoYignRp7hK2LuzDUHwWCgRCgpo2tBMbH4EYGLuZDLcwcCuSlle7NlX2CyL7zkX9r4idUPQIRjUeqPdeYpHrHlvfesYChwHZJvgIhKEeeHj+oYeF1teeXWK53fNDpicrvBMignRp7hK2LuzDUHwWCgRCwnVLCLiqlppUNlbf6r/r47+iBRxyVr9EUsUR1/30MkPLxcFpwIgiHmd/Dxg4t52wVl+HXdd9zV0s7H0iA1ZQ76gagn1kR5Gbw6CDlTK+pZBnHqLfOkjD4VtUB7p/C0HRHEqFYX1IXlR7FtydVOBq5V9Yc7s65j9gXvSpPeghCdrxzqvfrxtToIPbAUcvaW9dGp4jt+D/PPlhBH17laUJsbuu6mmC2oaUq/Qm7YaqfRx4cYZia7hfXDBGmI6ln6n1uge0rRD7OUWXt7M8sExZGV9Yc7s65j9gXvSpPeghCdoPZ9gppepSJP4ZHhFTJDtKEbouXwjvhtjVDwtJeud65TvjDdUIOmq2tnUDgavUIFHfK7eVRN9UoRK7YPSMR3BPKNXrj/4DHMB9PZ+Pm38QKo1yaQ3AZIv/WRpWEfBOutBNyiIAvnUypN/taRS+06myRVOXO9MQYWGUAht5nCWDuw1Ssl+cS3o8G0e3yVIKjx9cB6P0WNjQARI2DRufuzTYKNXrj/4DHMB9PZ+Pm38QKo1yaQ3AZIv/WRpWEfBOutAISwt7pM/01hiYaO3fWGTim9hgvXf36fHbSNXMpV36aAzeWvam9zMUQ5L4Wp3Q3An1gG5XJLruOsK4vx6Qkoiww+Y2yAWAiPsyoMmJnqbqQQigk4jhvWrPYikmKqD6XBX1R9A0LNMQy7VettMhaHyav6ZvOw8gwseSXtVABkhD+Ikr19TfzqWqa1oB+gNCk6dFmXrsqdFDY6MoXNT9RSRNaAowpXOw/OfaMT/crvptqCN2zNymX/JEZcSgGtYZ2RTXhQc+SbkG8zDVu7u0Gd1hqDy8d+B0t/klI4c7A05hVTXjXqouXHQms0+w3vXHg4Z3herxh9udeIiy+iJ0RDMzzh/o94kyhU7+USmHVmrf4lrEJp6Chbk3/7v/csfGiuY989xFCxSi3TW3eWHYkrs3ffffFl0oFprJjYYKGQrr5OuR4qmfNhZUyW7C85U/HXBNWike4tOZDF2KX4E5wNvxfeFLuV6a+y7aYp2Okht+3C88i8txkCU68+K4lUY2YF4DpSRHa7SH/y5cKiRmCG5UPjGSrtJJZ3ggUdTi1jtGTHF/tcK8Pk0rh/21QKur8I4KJGs1GCYX4Slub9ve4fa6rC5jYYxRkT9DE3fdp6tNksOy1BFYjKGiztwcZ5i9DqvBjqQSxJY6zFkqfKCOAEbJlPeJdCmk/E+Yrur8q747Ezuf8pBUHzQYCn7W1BWQs9JTVCNQK9ojkRYN65uU98pgvJLQcizOMNaEg7INccnSKdPELIQRSJ8F5AVJ+3y21l1WShRAXdtpCbdx4ymqoimKHvd6JL/NPX1Ojjg0RhV5dSwd/f3BmHKYUor5AGYuHTZyOVfH2Ec3bvMBlXz0S/hWSR8MlDjXe8bb81UaOliePqcw0cekInHpQ1yqj2qD6bvzcAOjf8BBJmROXYq5TifcIf1pfb8pZIn9juEStCBiYbh/Bno4LPJtcGZS+lQwZrB4NxF6NdoYR49b6SiCfOE3TVIWiVHIrsH5fU1AG/ywkUesTwWY+c28pvvLgz6+mHWgIAUNDXTWFwlkF5x6nPCfBxkwg0vxg1xmHjoFAZ1kCCjV64/+AxzAfT2fj5t/ECp4NxF6NdoYR49b6SiCfOE3GkNuimtklzBYciTl54jvOLx9dRgl7pYMLnNdr5C6MoVXE7UEa8nkAt3eRcuKCx+MAAPo9Wh7PKhrKby7RmGStil8U0Oy7HT5Ty+KD0sA+t71gG5XJLruOsK4vx6Qkoiw4r7hVVMRCwJE4xhc3qNbUBFcD0jpGKfzRhKSwOP68R4Ydp1yvUXtqL7pvMTIQMJG0Nexale6FnzBfDnZu80jhg/dCnl5ecI8qrGTO19sVp0zTIGXEZvqAR2aGQSlK6z7vF8cjEBv4I8C8zAjQc6PcU1aKR7i05kMXYpfgTnA2/FSIdJPy6naOwJdeV/PHYYITakLOQzolNseOH3oMj+tWYGLdl/SHApO9JTbli6xP7020QNrFPKy7YtBooubR9RpjRaZrTnqphjQWLpTZh0KEgzySyvw6zWsx3vdGFtY70AWVvv3Gnq5hYCb0q1ySrsQGLvWqX2UwVDOpwCpjdgwTiye0jmUnWKXagQE50hKTOMSvb9ECl+ykw9fYF/qDNNQF8XDaepVahXQrHxrvlkRQC+3maGBHFU3Q+Y0t948wI9Om6woCNfFS6DSJlTymnc9GLvWqX2UwVDOpwCpjdgwTiye0jmUnWKXagQE50hKTONHdSZsZAo1h+4HtXIdET9wHZEydaYcDfJszQKmKXQ1o8KVNMMFDWLp3ZH/HyuZV9WWjNfDWqHNtIZ4zLzubm+zhuVenqiYHhjIK0FkMQ6WMffzMg9nphlj/FWmip709VsXLNSfyqsrrKjqid1EUv2pV2HWO53JZM1RzsFgNFdw+3rd+grsKuQE9IR4kHGXkj2sL6eyF/n0V1/qM7yDFLRi/DpOSmpxrUN8XJssxAsrl/MIOnxSoCJyjqiAlks4bqJwhQgQRv/dyZFeMg8QWFvucYXVcxd0ItvHchsqUBaeC1mHHZj9BflkVx98i4vROxT05B1pOmI+864pgHcAh/q7VWcUPydo8ZXNhhBoJPhsCV45gQJmgmfrttyftYZD+KAcPEM03CIjjFpycWm9dJRgzohzgTprWJmhRmq43PeLnetmyCtQV9QDs6U8Q2oZJX52rut10MRRgHz9UAqng70Lu702gV21K5nXN0PbgZ3IgB0YTG3LUTJu7rEDUX8MtQHH19/Qy7RlxwEPdONFTWyZfUD359cI/kqjTQcyzqpGX5BuSCKPd47ZIGbrqr2Vqnh8ykZHgFHIEqqk+aWruOioETk4DyO25PIi20rh4wJ5RDlaUIymsW8l2JNXR9oUakgfqtHoespb2s9BJ9jzKQLq7pyj4oi9MRwq0IFrN0qyvLEIFCeN9dlIfH37xQXFZN8kJckhfrPQ/qUGuyHZRgeMdnE9Az58inRtaWgcIknpR1+3cQ2BO6y7192KxYF2jO/nAhfrX3/LhqZ01DyMXRZdGZ3E25aNgFLlGYa8HSGU5uS9XvZ83mZSWMeFTMTJD8Z7xtFxeKBv8xxom+sNWu14zFnkuUvs+laCgVI1LAwM9F5Xe605nFS9zwuGKfJ5BF+XEEUvypP6GJfCRIrk32ncYUYPALek5CiBjmiYmVCrO7A8s9ZQsPofRRM5tlipXGRxAwtY6wreGzZ+io6M7pXRaw8M8jBQPTpuQAccgyfHCb7tET26UfHzgwO8dmBOfMSyA2CybjUKDC1N/1XJH8VTDlkEBg4mMAJKbXCmRt4nbBAgcXeALPLttYZLPi69Y82b7RBdPSnbJ1oa6YpFs9AtHvd6JL/NPX1Ojjg0RhV5dYVFo7x0dhCLei8eznjymZJyOVfH2Ec3bvMBlXz0S/hWSR8MlDjXe8bb81UaOliePqh/htzb5EISfSnSG99c8yTzcAOjf8BBJmROXYq5TifcPmkfClxVoa7d5m8n9bO+wLh/Bno4LPJtcGZS+lQwZrAyYH5sW+2Nr7jOsDcRrgM3TVIWiVHIrsH5fU1AG/ywkUesTwWY+c28pvvLgz6+mHWgIAUNDXTWFwlkF5x6nPCfBxkwg0vxg1xmHjoFAZ1kCCjV64/+AxzAfT2fj5t/ECoyYH5sW+2Nr7jOsDcRrgM3f9J95n4rDD9GtXrcZLVhzpoGqGjoiqG1OvV60kUTUy8GCEEl3NqLpZRLh3qezEBdI9yEzUjjqW7KItNtLcCpTOoRnnMTLGksTFC4mUDK4GXvHW6arMfyJXxvEU6c/hPVTwR7ah1bUoxAYPLbm6tIJNrDR0AAnL7y4MKvNUU4PKxLgxD3BYudRHHeMqjybV0//fRNE6ab+Qv/LZtxYXPCdCBwy4NYJQbSfJhdQLkBrDMhmWOA66bCntJ6dBeUPb0XsVb5GUJq35mv7heEjpDG7s8Vm+iTkjndj8QsUGSOO2tGilyPuv2vPfZNMnxc1pOlwxqkbHHJCldolYAPfHNL1zT86fVimc1zvNysUACFAQMuqi/nzXaV8YqCUXJudArEt9VtwraKiQULBMOUui+EB43LCC8HJMcserALEkfszD1GilyPuv2vPfZNMnxc1pOlwxqkbHHJCldolYAPfHNL1049i9mmd7NFfHkSJf/7sWVEpqAHhIDd15qi1MhEbESfRk/6oCi9Vjh3x2AVbzXgmhi71ql9lMFQzqcAqY3YME5X0RGd+V9S8fCzxukMPn4VOZtZ8d6usC75oybhDMSI1JOWclJSSKzpiamGecam5r96SL4YccWZXNmjKeul8pFBkixm77G9Nd/rdG+2daxcKsTW7INZeoF3LMzEV3KWm0pEHs9kWbEgZJKyKz8fVzOkrB0yS1fXvUyrQHy5wBblVsZbODLJC4UPvL+CJLj1deN/sNNnKmmbyMC6S2f4R7nYPx8CCZTsIbSl5uLYlqmPfQ2VbTq2injFRo9kveCbbbw1416qLlx0JrNPsN71x4OGEX9COP0wS582qepYEo/rBKaeXSUwzD2AygSSE3NzTaCupiZ2u7fPrv4uobnNEYWlUmpJ1HySoiVmtsVOthHItsFWwIg135GvnE73M+BCYJAEFu83sLnY9mDbWjFrnT5iLitmXghEGS1mzt9TX0naD3K4UgjxuRwvyEI7nzLPW6FaicT+0j4ec1XMKh5DYIbMcvBLM/q90cDI60kOUrvj8PtoXn0oYw9VodSzGUWvyp5A5ERkrtxZ2Iec2mDrp67vAYOWqSwz94XXg6COJUincpTHnDh7EUA/Eq6bhAsY+GAFsJcpjUGFVl7OAgyfdKvdy8SzfB6TKs4f64EzziSkLPtoXn0oYw9VodSzGUWvyp6d0exul+u1pIkB+nE3d0y1FWeoq6e9RGODL+CvuKps9FughPoyVn9xu7+Fwc+I7WC/bjWJyYcme93QjeffGkdTLI2rRGjdJ0AQvUWZwUdCHT3FYbM1FMeHXU1FOIfU/pkfAD6Jfh+hlswKopJZUgg9k34Z2g8g1gPFtWiVx3iDBSju67g0/B0lPXoVcANjmIJXUnmFgM5L7aUrCfRBinD1CXgOcTI1vlJ1IefmbGyS7nyUqjJvYBCefmfRp9CMoVha4qvCeYdGOLIQ3TqNNqtcG4Gag1PgeIos7SJK3QJnP8U0Dkb8SIZc+9UsM9QbILqNW0gYExxJ1zD587N27fRhF/RVD1DvTR9Nz2vIyhW0/EwcSM4AAlVeAZL2DPZQ29NPFh1mlXI3XdTuJLX0B5BDB9W2GcebaL1C5rpNSM+pe/XJRt0JNVYZppZzuwDq9ZIzRIkZtD7hrTd7UBhej4lwpIybY7/CsWpKt/y4lc0foaXSbEXAeLE81Q6g9CAxb0OiODngSOJ+ex1zacBVzZmBNI0eOOy09DBrmjr3Bu91CXuUEtNXmrDvur5sumcLvgc0AA+/LEAqlLUO/Ehvk/c80nLg/PsAXtFCUpo+Z+XCddwkCPnZ7qWjlMbmG4Xqf/vr08D9vl0acEE14zCFDlVINPZPM2Xw+dD8mjFvXBiLoMKGQ9Ak1hYcCM231djUI8V67KwM+uXaA9RJT1tCriTyRiJ/M/vhBxgvIU27cylzdRW2J1IZ9yvXJ18VgwhnQgpZje6mszLmXcdKVk5IOGrXnUwGhgkUH48XHp5dtj9XNGUQJKwWQLLKqZvUzcvyBC39lrYd7v1V0ZkssxcwEm4qop1mGUSORqnnyig7+KCUfqgDCb/J11hNXxHqh4XX2uuLlQTlf2wPV0254/K2WHrwCBQu0v+YKBYaPqWJTl8jYj9urGbl+IHxyiCVMJ5MDkl8nEIZPQs4yZ4hXYfx6jyDGOouFeam3v33cgG10lOscHdjZGLBdG/7xSAMW5qsiFjIP45Sb8nqRxMftOn9VleyXsDNi8x5+IleGBf5aHNlU5DVM271QzZ7gx4wNIIh6tPGLuUn3aic8paAUGLwbnZiyIdu8o7mDoZODLcKPrkz9pE1i9Il/DBlzmIUV7IMoT/jpY4u+mtwNsQIJUXEYXeyVcpv+aEGSMTzXSOoWpUktvQCWlws8URmoWu8HVoeyXFGOV5wrblEVYa2//CDG/tlv63CTTNLDnvzhPauKDnJ7+sIv6RhGFKe+FzJqW3ZkoZbFc09RmRvkHkbOMIiQhPCydD8Y8UEujWVq8czk/6nvtS/v1MHrpjACQNwKekTAMHZFrKMHhulXl1xazSO7U8Zmw6vorEEIdty0kJCamDDKv2ucSjGz0g89XWsYmcqKiPYeAP6khcnDwAo0hIrx5mKaxScEWAm0h1TFUFBLyNH0el6Epa72AeLNosvWSujE+hIBa2sdsY3ore2+/oOMYjUdfqEexFK640hNb8u63g7PP9jLLQHEV/dXkv6r2J3NuFkXQa+smmYDYYuva1rc4yCfKsaCqk9kT9oq7Y5tu8NyNnwfxacfeQc7dn1WYKKbf5yokwtZUy/YEGH8xUU/0Np8Kxa5jToBIBvKrsRwBJIqrhuEFFfNZnPZjVbZoE0LY27hQRQGFzGGcZcJaoLTo1Zwr4R+kUHFdv1oGFLQP7i1+3cnqpxQ64gXPAEmwu3/O70kov60Fc5HTMqrKsC/BKe84JQudROu5HtKFhCi9i2Xysw4askEoTe26FFK2rxgPpbXsnliuZk2Y9nOrdB8O/bZJ2dP5HSi+h3074+f+9hgCdKvyVC1meUIw+bVQH/0XalEyJso/vfB1UqmJMPDFdhXirnQ0CpTRYS48U/oEYExq2TUc2T+DAqqpWLDZ+VvjXWnKhIM2c6qsWWyKB/fZajk1+Pda9uLQfZ32nLTiLYcieGoZwudXmsOse58VqS5YX6hKNxSjyxSWFPcgsP/TDF0qPIJTKkdlbDk1T/tdC2wV4q50NAqU0WEuPFP6BGBMbjTlgI8XTfrNvj7K2jvNmMw/eA0e8UjaoeOdmmy+7K7LrxDBPRDoAh/B3Cx62c+RXjmUE5nySyoaeC2/uHcWeIu4UEUBhcxhnGXCWqC06NWQha1JdLSzmENzoVb5EhuZAVstzhLZAr+RocKnRQ8og6wARjQLRVSoNMvv3yOCt4/+J2q0UZNomOfRrfRLwihRqr21gv/6vfH5VFVSUQ0UmzEh9cxW7QJlcMpCke7DcYPD+kZ3ODbE/foNmzTwq5FB2NHfUBjBAobNMH+uuhdE/uOc7dEgNgjCuA8Sph+mmgwJhqmjz12AieBLAkZAvOWwZqjA26Q5bIVzNd7SUPMg8fk69++Y1ZKAoS9r8ujrEpGKHbYvNS6zruaVrGs2eP4vSaW6qH8bejEd1J7lzvOqo5LsmymGiyx+iVIwbPz93fnpjfJEbtwxqwQ6nBczCL+RZPbzCyrElGPyrCUlRaplGH9HmW5rfCnLUCEJo3LJCZZh86XO/fFKdt4sfqa7jiPEhodoi43LVGiE8jod7X9JrvlK/vmEzfinH9HDPKhChXeleYTW7hzQ0R2qLaVNImuLMnIlRPQV4On6ET/54X8A/ewWrrrVppW0AypX80RWW8HaMsC423vjoTiRhrx67y0xTCNKjCyMmM+kOUhdBMfNaKna3AYWiQz4xgERsx8OaNQmcWpdCvNbpQHqigCl7vINac1VJ+QDcPlbxzgUMiUsDvtoFGxsgrToRlJMYtKLhUCTU2mRLjBa78HeupM93C9gk58lXsjAidWDzdsUCMYPevsv2vw7d9XvoiuQQbDBgqHdbX8u4+yG1HPIdMSrsDFoHT0FSNsVAKSDf987HrJfotdFdUj1EtshZYlhGLdWZEiZ+fA9OC3brh98TCLobRf+hbB1TsF89zCm4+jnXLeMdLF+ixSVWPFuS/sJNahojwO2Fwq3k13ivcqagd6CNHOH8epd5WtqG1jEuhT4xQpQsMzaEP/i24FfF4o4MDvnS/sUgWS8AX9OLMLIxTVTUV2TCaYaqr7rRNtk4fmrsHGzwWd9n9BYMGs74Sy62+UYLNbb4lmbvV1IIv0E13nHQbib7TjLftfdt4gnwLgVJ9xHXMbMH4YLMN3ctHd4uGym1vgGyTmWOeVyeFM7VXj44D6MiyWHQFBJj5B9eZAgUywWffRZeAHAE56FekgHye2JZ4GSNMehDJA+4ocYAWFK2ySvp3VCFt5tQNodK2D5onYvTFljqS4E7fsLH5DCtNzB/ztCiedNlVZipUKhguVdaWsOINhkvKmB6UHFcdg37iHg0iRI5T32DhnfkIfwmKpl1VTQChOUFrg+fFKW8kHXSI9o7kGF/oXhXzq7mJkfn1o++n8QrsBEyWQikGk0/HPAt+DV44DLbpfZnAShKLIXzWmOIrBqjoclKVs835EkyZnpTSGmV/19jHbbJ0GGWdt79j7T5MeW7IzHBDj2ibLGu6C8x+szlr5jC+0JuiFKIPCSX3Vx9wZsspD7FppuQEvix8AtpCY8W6IA3/nU6ASo6/Oh8PXPiQLyIOS9ZHQ8a+yqQPF+ixSVWPFuS/sJNahojwO+MLyasNxN+9tZNPFHUMiA0AoTlBa4PnxSlvJB10iPaODxYRJv1I9HsRyV0FJ5ahTa9d1qjPZU1iYFxOlrW7KWRRD2mbfTFKFbkWy/KYdB0mQLQvdBt3H1pCpvVj+3ljV4mZV+C18YGAHyH9qtSRWCfoGlSv7959Be8AxwmARc630RXlqemf/nzik7d0isemL+TOVWfXb2s+yOpKb+YhZcwACxP6j708b3ck+7ABWCMt5A2Daqu5LJvMDKZkSy8fYE1Bc6qC/6xaG2mwBb3Fg3ro2wpHbFvYCjwgbvExlUtiXXZWQv1Dhfzvnwsl0ANBaYig30u730bzF3dWqQasdZGUr++YTN+Kcf0cM8qEKFd6V5hNbuHNDRHaotpU0ia4syxE1t3/b1e7n+jbEXAQ0fjrwoS34/lZr9GKNLwI92+qaJtmWPcItSGpyetIuEZNZwChOUFrg+fFKW8kHXSI9o5IKbx9d1I2KJAH+CH1FhcZn58D04LduuH3xMIuhtF/6A+m+F1xja/0JNVS0FcBtlU+THluyMxwQ49omyxrugvMOu5YYV2GAVtU/egKG/hB7+/uKbBdmdbVGLDPf7QAwR4A/Ud07lLp7vIhBZNXlIqdj+kCDVNYYmdxhRh9MSw9PTxS6g494Phtv/+Y5k8KRysAoqufOXTmI+hmGehn+YOBsGkqYbAkoRg4FxkbrhgYioXVeN1JtmkLSkUssd2g5GcCKbpP3O6jDX+eV+zT1EkuwGqQchfV2pEtfOhbNyCYt0B7NAIjdSuZHwNlFz+VEX3Xssc+SZE5ijl62/N5vAnxwPpOJ9dM9mqkRLYYpShHTRvFNEkEI+BY5CTQN11mmF6C2xs7UVFUB2CI/3hHcAp6HVk0UJQtkV1MOu2r093Xj7seaho18iVIuKXmudTehSlMXSkJitgzBg56FLz2vND0X6H+fylOxEETBcMoPM7SXut/kUUVSzpNcBljX0DdKAkNq92yEHbZm9Ob002bCeEFYuAsUGC6sm91ZFnWbvVXjsZu8zVcqRefHh2uBte7w1h8H0N5sD1aAyKqfOdEdwRnx2fiKb0T+hoQsT4nR5y5diy0/flA1RsKE3Fj9OIKlx1xMeBNReMfIuOhKGylE6LnWQPJV4RpbqmTQI5OL+yhLjU/w20KDzTblxuE/MOZuaNt0/W0Wun17sDdZ70tTZJKMKD0YsBfri8wKp9hanXeX61SmFOcxp/q74fmUdtHeVvQCuPJKKUn2MdmJEDE07ciIUenpFPDPYDE3dOohzQm38LWfkCR/S47x8l2F3Rym6axO96CL4Eo7HHh3vmn8OytsFkLKo4c9g2wXtCa5qsfOg0ZM1RC/X9AugM6jty1B1Oe1M+SIV1JjRNZS+FUdyqZZiMRrnHkRSYVj0LOr0QAwgvVvtk2g6M5q2fgzfUGPfJ5s2e3NoV4g5Qo/YPgFSi68lZOJ2Q0FAmw0WWp7INabN+iO8id2+DhfPk3+sH0VXtMHEjOAAJVXgGS9gz2UNvTyVOY4ufqn5pkON2abUYxT0PBLqU8x3bAwZgiDcADev7w/futM/4NK1GxvMU02dtVDUsTFCj5U8oFKeWlLOtTrmMlADE5NuLic2wcim4XUc9jAA1TgXnpxAd7f+yA1Sz12fkl/CfG+XA2+gjH4PORf42Md5na4Giq2xZC1RFMP96i0hQEZD5gtlVxfjvBBlPvh2dKIItZsM8dIyo1LiPOhRq25N2OhQqCbnedo1VatsZkj/leB7fOIcbnjZxgn8IRnOiKmvmBfEmr/sTvU7O2IiIOv/27e5/U8tfZ//sVpErGL8CUda46AaP/FcVeSOUTgpkppO9lzcA1xAuxHWugX+hRRIamDb8lqBZvBnON+Kxs4ZSZzQ7tzuTMi6jZpYgmlZzTDq503la8AjHchkJY7XEl5XeZsL6rP7rxyCbYxiwU0nRnXoTf4m8w1wHbiMVH4lvkj1rXSNNO9AN8y4euWg==");