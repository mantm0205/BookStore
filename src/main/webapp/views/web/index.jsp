<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-eq uiv="X-UA-Compatible" content="ie=edge">


</head>

<body>

<section>
    <div class="slider " >

        <div class="numberText" style="height: 200px;width: 100%">
<%--            <img src="${slider.img}" style="width: 100%;height: 250px">--%>
    <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoGBxMTExYTFBQXFxYYGRkZGBYZGBgZIBkYGBgZGBgYGRkZICoiGR8nHxkZIzQjJysuMTExGSE2OzYwOiowMTABCwsLDw4PHBERHTUnIicwMDA4MjIwLjAzMC4wMjAwMC4wMjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMP/AABEIAJ4BPgMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAGAAEDBAUCBwj/xABREAACAQIDAwUKCwUFBwMFAAABAgMAEQQSIQUxQQYTIlFhFBYyUlRxgZGi0RcjM0JykpShscHSBxVistMkk+Pw8UNjZILC4eJEVbMlRVNzg//EABkBAQADAQEAAAAAAAAAAAAAAAABAgMEBf/EAC0RAAICAQIEBgICAgMAAAAAAAABAhEhAxIEMUFhEyJRcaGxgZEywULwBRQj/9oADAMBAAIRAxEAPwDz1dm2XO2ii1zqd5sN3bXPMx+N7Le6vR9ocmHlwEghjzykxZVFgT8dHexJA3X40MfB7tTyKT68P9StY00UaZgczH43st7qXMx+N7Le6t/4PdqeRSfXh/qUvg92p5FJ9eH+pVsEZMDmY/G+5vdS5mPxvZb3Vv8Awe7U8ik+vD/UpfB7tTyKT68P9SmBkwOZj8b2W91IQx+N7Le6t/4PdqeRSfXh/qUvg92p5FJ9eH+pTHqMmIEi8f2W91IpF43st7qIIOQ+1UFhgCb+N3O3C28vcVKOR+1R/wDbx9TC23Abs1uH3k1GBkGskXjey3upubi8b2W91EUXInaqkkYEm/WMM1tSejdujv4dlNiOQ+1nFjgSPojDLwI+a/bTAyD+SLxvZb3U2SLxvZb3UTd521v/AG9fqYX9VRx8iNqgkjAnXrGHNtSdLvpv9VhwpgZBpoovG9lvdSMMfjey3uojxHIXar2vgSLadHudfXZ+l6aj+D3ankUn14f6lMDJgczH43st7qXMx+N7Le6t/wCD3ankUn14f6lL4PdqeRSfXh/qVOBkH+Zj8b2W91IQx+N7Le6iD4PdqeRSfXh/qUvg92p5FJ9eH+pTBOTA5mPxvZb3VJGsI3v7Le6tv4PdqeRSfXh/qVd2PyS2th3LpgMxK5fjOZcDUG6/Gizab+q/XVXVYC5gywhPz/Zb3U2SLxvZb3USd521/IiQXL2Pc5F2vcZS9ranh+ApjyM2tr/YBqLaLhh/1b+2iSDsGykPjey3upZIfG9lvdRG/IzapBHcG+/zcNcX6jmuKUfIzawiEXcF15znLnmS18uTKTzlsltbW361OCMg4Ui8b2X91LJD43sv7qI35GbVNv7BaxB0GGG4g2PT1GguDodb7zXXedtb/wBvH1cN+qmBkGGji8b2W91OEi8b2W91b+H5CbVTNbBOcyMmrQmwcZSR8ZobcalPIranNCL937iTn+Jz6kG2bnOzqvbTdTAyDmSHxvZf3Uxji4N7Le6iSXkTtRub/wDpwHNhRpzPxmW2st5ene2u69zXGO5D7VlkaQ4FlLG5VDCqjzDnNKYGQbMMfjey3upuZj8b2W91EHwe7U8ik+vD/UpfB7tTyKT68P8AUqcDJgczH43st7qXMx+N7Le6t/4PdqeRSfXh/qUvg92p5FJ9eH+pTAyD/Mx+N7Le6lzMfjey3uog+D3ankUn14f6lL4PdqeRSfXh/qUx6jIPmKPxvZb3V3iNksu8VtT/ALP9qBWPccg6J1zw9X06M+VOwVVhpxqkqJSYV8mH+KT6Uf8AOtF1edcmdpoiI0jhUDJdibAdIcfPRkOUGFIRhPHZ75DmFmsbHKeOumlUp9C69DTpVQx22sPCyLLNGjSEKiswBdibAKDvN9K6wm1oJc/Nyo+Rij5TfKw3qbbiOqoBdpVnz7bw6Z80yLk8O7Wy9Evr1dEE+YVPh8dG6h1dWUgEMDcEEXBB6iNaUwWaVUY9rwtmtKhy2zWO65yi/VqCKWL2tDEA0kiKDexJtfKCW9QBqLXImn6FTlBtZ4MgRQS5OrXsAoBICjVmN7200Vz82xox8pTLErJlQuEZWBLCzXJtdRfQaaahgbX0rWnxWGl+KdonuM2RsrXAO/Kd9jbXzVBLtbBlsnPxqy71Dheq1xVNSLlGoui0Gou5KyrgtuLGhzFpMoLFrC7XzvYAmwAA0F78LCxrkcs4bEmOS4z3C82+kYLsbK99EGbdxsLnSr7y4cMVMuo8Jc+7oM2o+iGb1mpZViQZmkYA26RY72Nh6y331OnFxVN2NRpu0qJtnYwTRq4VlDX0YWIsSNR6N+41arNXbOGSyc8gsBYFhe3A1L++YP8A8qeur2UonkL3XKFtfpXJva2ltNdamFYz7WwzEnO9z1CUfgKswbVgNyJAPpZhw4BqopJvmWcWlyOzJPz4XInMZLl8xz85fdktbLbjf0VerBxWJwMZEkkyrd7gtKwGbV9ATbgTbsrSwOKjdA0bhka5Vrk3BJ1BO8VcqdwmTM2YKE0CWJJOnSLcBqbAC+699bCzWZh9nQpbLm0BA6ch0II4nt9FW5AjLlJ0tbefxoCHFmfPFzfN83mPOli2YLl6PNgCxOa287uur1ZZ2VB/F1fKSe//ADp1VJhsFFH4Nxex8Nz4JJG89vpoC3NmynLbNY2vuvwvbhTYUvlGcANxtuqHFwxygBybA3FmZTfdvUg8a4w+FiTwbjUHwnO65G8/xHTzdQoC8apbIacxL3QEEvzubvl84uTb113iYI3tmJ0NxZmHrsdfTUEezoVIYZgRe3Tk4i3X1erhQGlVYc5zh8Hm8otvzFrm/GwAHZxp5AjLkJ0ItvO7z76qfuyDt018N/fqOzcaA06VVYFRNFNgAFtdjou7Q/jxqbnl66AyOV+3u4sOZgmdi6IoLZFzO2UF3scqjrseA403I7b5xsHPGPm2DvGy5swzRtlJV7DMvbbrrTxKxyKUcK6MLMrAMCOog6EUsMkcahI1VEUWVVUKAOoACwFSCzSqPnl66XPL11AJKVR88vXS55eugJKVR88vXS55eugI9ofJSfQb+U0Fcsj0h56MtoTLzUmvzG/lNBHLBukPPQAbya5Qc0Ua17Mpte19Rx4UcRcosHNl5yNoypuCp0GoPzCLi4BsVI0ryHARyOQkYzMdw82p39gNTx7RlU2yE6cDR7oslNM9M5Y8mk2nJh5sPi443hJIABJN2Vr6MGUgqTu1vwrQ2bsJsDFKUeSZpGzEmxOY2UsesakknxSa8pXbrcQB52/7Vs7L5aTx6LNp1Fyw9TqQKLVkouPRlqCjanTmx6jiBYHtwctvNWpyDmc4OJWtlWLDgEEHhkIJHVasPD8vw+k8MLgggkNY2II4r1E7rbzWlyc2zgkQogaHMEFvCVchuApXUDfv/KtHqKUXGs4+DPY1X5+TrZEzEYgE3y5gNPEn/C5J9NLlu18PAeBM3qZGA/GrezdnFefZHSRXSbKUa+rsrKpHA+FVTbgzYeASiwEkym/R0DMF+4A/fXAk1qt+/wAnRD+P5KWwjnxETNe4SXd2TEC/otVflDssnECUPYZkjIOlrrfNfq330qPk7jAphezN0ZgQBc350dtb2PiDSAG1u6de0Cyn866ItRW7sRXmp+pR2bjgFUsrSCzqGRSSlkKsM1gGQCUkA6a3FjeiKXaCvDfPfLLEAbDVVmRrW6wosb6/cTkYjDq0k8VrKMQfB6Nv7NhtBbh0jpu3VlqJMPIY7NMqpmsxXM+WRxuAAuACRbWwNtd9Xqf+rgkRsuCleQS/aFNKuKCrK6gJLucr/wCpnA1BBNgoAHC1FvJbFmeBJMhUkspUktqjFd5AOtr1V2xhosQ0krq2VEmLqHW6FiX1uCMoLG1t5t12oGflLiEXJC2VRmtdUY6kdI5gdbAC4toKvKmisWevJh26qt4EMunNBietWP4aDdxryLZf7R8bCQJCkqfxDKbdQZfzB4V6hsPlKs8ayREcMyk2KHiDa+v41nVFssk2tstZSoliAGdSqm4BfUKNTrv3UUQxhVCjcBb1VVwzF3zcMtt4Otxbd/nSrlXiikmKnvSpquVFSpUqAelSpqAVKlT0A1KlSoB6alSoBUqVPQCpqemoBUqemoB6alSoCHH/ACUn0G/lNBnLDwh5/wAqNMf8lJ9Bv5TQXyz8Ief8qA832DhyZEAOUk2v5wQfuvVXY2AIniVDe7SKL2X5Nbnj21o8mmHOx3Ol6i2Ifj4jutNPrcjeh6teFdMNRxcUurf0c84Jptkm0hhxqyMul91vxoflxGDvYM4PYt/wNe0cv9gYfEJAZ5ZI7BlUoVFw2pBzq3V2V5vtvk5LgwGTEfEsxWEAKWy2uuc5AL2vciuKclFW+ro7tHTerLbHmDyxK2sZkb/+bH/WpZJJ4lzmKdUHzzEyj1tp99EPJ7as0WSRs0ys5jKsQoBtFY3A08PT00a7YmGJwuJikw4RoeZYAsHHxtwrAgD5pO/ronKlKse5bU01pycHzAO+KgZCGYlrZXRreECQL6EaA1uT8sZogseJMc6sA2WRQ246a2BvcXvWhsTZ6zpCG0+KjYEHW/NnXUEcfvrBxjFDHKIudQSNG+8ZRcFWICmw1NyTvK11KMJactq8yr5OV74zV/xz8G9sblZggysgMbKGAXMZE6bBmJBs28Eix0vW4kyzMrxSRyHnA5C9EjwgTkbpW1Ggv6d9UttbLixMETyIciEnKHKWOq78p0Nrbt5FYbcjMNvhxU436MIzbRioFk68vovxrh8SCTjN12s0lJc755CyR7TYl9yibMzcADhcPqeodBvVVLCyhsYozX6bJe4N8rgkadWcjz0KQvj4XCszSKCArOgdSb5GKg3yqGVlubeDurexu03hmgaXDq7Zg4eJ3UKQVSzBlIC+DuAHR4Vu4OTU6Jimltt5KPLzBNMkSwqOckjRncllCxZVsCRp0mYi5FhlNyATQLg2JzRshzLdStrEEdEgjhrvvXp7lC/NSx3CJGig6/JE5gWvc3DEAjhm03VXm2e0ZfEwMq4jUyX1SWO9yjg9W8OLEW6tKwc6e06YaXltGUP2ZyPBdTEZCM2U5l132DcDQjseeTBYpS+ZMjFZVvqVvqttx0N/RpXpGw+X8MhWKVDDIwOgbMAw3qdAVPnFKfk5DisSkjIrFnUZj0rqAS2l+obyCNKhSawROEdu5B5sYfEobk5hmF+CnwRbhparlIADdupV0o5B6anpqAVKsz98/wBrOEET5hEJjJdMoRmKDTNmvmUi1uF6fam2eZmgg5p3acuFKlAAY1ztmzMCBlF7gHgONKBpUq5lkCgsxCqNSxIAA6yToBXC4mMhSHUh/AOZbMf4Tfpbju6qAlpVyJASQCLr4QuNNL69WhBrmDEJIMyMri9rqQwuN4uONASUqwJeVdnRVw8rCWeWCNg0QDvCZA5AZwQvxT6ns66bC8qc88MfNZEkGKLs7gGM4WTmnuFBUqWIs2bdwqaIsIKVUtqY5lhzwiKR2KiMPKI0fMwGkljwJIsDe1uNWJMTGrhC6B28FCyhj5lJuagklp6zdvbY7mWNuaeTnJUiAQoCHkNlvnYaX6t1SbZ2muHheVigKozKryBAzKpbLmsT6gfNQF2lVHZ+0g2Ghnlyw85HG5DOLKzqGy5ja++3oq1POiKWdlVRvZiAB6TpQEl6esblNtd4oUeAozyTwQoT0l+NlVGPRIvZc3HhWyaAVKmp6Agx/wAlJ9Bv5TQZyx8Ief8AKjPH/JSfQb+U0Gcrx0h56A802LKyspUAkEWBBP3VHs6bLIhsT8bLoN/gkfnU/J1Lyxj+IVUwJyyISbWkkv5ypreMluh7v6OXfe5dl9ntPKqZlhjymxJtcEi2hPDfu40E/tDjzYbDnMBZhqQT/s2vu81GnKhrxwL4zWHnIa1BvLt82EhI3F1/+N687i5bYwa57n9Hq/8AGx3cQ0+TXsYvJWQ5ZBpbJPw/4e//AEijRrn94Aj5mEtxvZnF/u+6gXk2bkrp0hiFv58K27qo8wpDvjBe14oDfzS4gX+6t4ScoW/Q046EYazUfuzJ5KbSikmiEKlQIra21GUWNhu0H3iqE2mGnJ08M7uPQa3ZorH/AJap/s76M6AH/Z289gBWth1zYfFaqqhizs3BckmvZY5fRekNbbNr1aMZR3rd2fyEY0wZAvvXd/8As3efhWbhyUJVlOugvpuqy+Mji2ers6oA2hY21DNYabz2UI7Z/aLnsI48xG9iCq37BcsR57VwcVw856z29H6Y5+pxVuin2QTy64ZzuK9163tomLkJ+5jXGCeHaLOVUmOHPGHYWSSUlGUrlNyi21Nh4QtfWvNdocpMRMmR5LRlnYooyi8j84wJ3kZrGxJGlbH7NeUPc2KWFj8VOQp6lkJAR/yPnHVXqwdKjRtpYNrb+Kkw+IRJFK7zY/Ov84H5w7a28LtOF4yx4gA6E2B0uwG5esnSr37VJYBgmEsbu1xzbotxFJ813ktZF4HiQbW1rzjAbTkTCu8keXIygOhKuSTYFTazKCQCb3GYaaiuTU0Wn5cnbpa1xt4QR40YaaGeN8zyowCE9BCGdemroLkld+cki5y6G9F/IPYrQc5ewjBtEgucma5YXKgnf1m2Yi9eZ7H25CyPEziINdmuLZmCm2VwbC9xoRvv5q9t2VEyxIGN2Iux3at0rbzuvb0VeCadM59Sak7RZtSpUq1MhUqemoAa2HiY5dp41ldGKR4eEAMCehzryaA7g0gU9RFt9RbY2pAu1cOJZokEOHnY55EUB5WhVQcx0YqGIHVRDHi8x6KMVzFc3RA0NiQC1yoIOttbaXFjUq4lCSA6kg2IDAkHXQi+h0OnZUkAlj9twzYjByyMFwhOKKvIQI3nhZY4mLE5bECV0uddCNQLZ8+HCYaXF5ckS7RjxMN1tlg56GOSQC3RV/jJNN4IPGj150BsXUEmwBYanTQA8dRp2imGJjObpqcurdIdHfq2vR3Hf1GligG29C6RHESKI1xeLhbECS4WPDJGUiScgaA5I899PjGUm1EXJLCxATTpMszTSBpJI1yxXWNUVYRcgqFAGYM1ze5uLDZknRfCZR13IG+9r368reo9VRYrHIiq1wQxCrZlsSeok2tYE+ilgH9sY+Jtp4KIyxgxLiHZc6giR1jijS19GIkchd5pYrCxzbVPOIHTD4RWykXGeadmuV3GwgBF+NjvANERxcWvxidG2bpL0Sd2bXTdxpziowQM63a2XpDXNottdb8Lb6WKPPdnGJsBshbplkxiy8LJYzYjm1PA5siWHmrYwGMiTaTpDJFiFxLs8oUq0uGmhjCXci9oyECgGxDHS96KsPiUcEqwOUspsRoVJU7t241FNtGJcpDK2dsgysurBSx1vbQAn1ddLFGJytxUfdWzoGdQTiDKVLAG0cMuS4J4uVA6zpQ5yj2jH3NtUzMndLyPh0RiMyQExxwkA6rGQ5kLbrudb2r0I4tM5jJAYWsCQM19RlF7mnGIQ5umvR8LpDo28bq9NExQD7ZkU4yaGWaKGLuaGPDPIuctHIGExw6EhXkY5V+cRlTosNKstiIMPinSY/F4XCQ9yRvdi2kgldEOsklkRCQLgX3Zjct7sQlbMCCHYMCCAEy5tb/xfcanHX6j56WKAvk1FCcJseEzIG0nVB0udZIJDIAV0GV5QxJ4rbfRpSpUZIqVPSqAQ4/5KT6DfymgrliekPP+VGmP+Sk+g38poM5Y+EPP+VAee8mIS08Si9yw/Os2EEsALXMjbyAPBY+ExAG6tvYmz+dKIshjJZfjASCtiCSCCDuBHprUxHJ7ZMBPPY0s1ycqyISDYgnJGpbjVNOTjqKT5Ix8Hm11x+j1GTDQiOJpkDEGMLmXNZ3IVbCxt0mtfhQn+0nk84gjTCRMwz6xp81cr3IudBqK6i/ajAoWOODETWFlZI7Cw0HhEE8NbVm47lbtTFH+z4JkS9lJRnPnJbKo3byCO2q6kIzq13OzQ1JaUlKJh8luSuMSVTJBlXMxu0iaBoXjuFVySbsBqLWJorweAGH7oaZ0jaWNUzPIuUZWle+tuMp4/wDcR23s/a3NvJiXlWNLZumirqQoASNgG1I1AI7aFJImtdcpJNrndf0b/NepUcbSdXUepLcwp2QcNhm5w4lGcC1k5yQMSwvbKcoAF9K6PLDCKk0aQyyCQkOXZIV4+AUOZdG32v1Vj7M5NTTIZGkVYwwTMio12Iuo0kJ4EVZ2ZsJBKY3LtlnaIhsgU5Wdb2C31KddWWluuSXJERnJ+VPmY/Kzbj4jItgscYJVFd3F23sS29u23E9dY0DaVocqQoxEqruUhRu3qoB3fxA1ncD5qtG2rZl7EtzbT1dfZScXFxUEElxU4bj6/fViD2fYnKDuzYk7sbzRQSRSniSIzZ7/AMSEG4436qEcLAjYDGYeXV0hOJiIAFmhazaDTUGMEdh6qxORO1uZlmiJtFiYZIX10DlG5pvQ3R80hrQ5QyNHEXHFJYyP4ZY2Q+q9/OBWU5NSR6XC6UdTh9RdVkFmjG+vRf2JcoZOekwTuzRmPPErG+Qo1mVb7gQwOXcMum8151M1hWryAxhh2lhXva8gQ9okBjIP1vWBWjPNPoqnpU1QBU4pqe1AVcLC8YCDKUB0JJBC3vlygWJA0BuOGlVf3USqKWUc1HkRgNbgxsjkcLGJTl1ua6k2rZioUMbqFKuSDmlWLU5bAgsCQM3EcNWxG0XyyKqDOiuW6WgsOiVOXpE77WG437QF+6Os5syBZOlIgJzO7NZTqCZG6J3aa1N3B8TJCT8oZtQN3PO7XtxIz+m1RYzHmMxk3IMbHKB4TmSBE3AkayEadZ0NNiNrFEZ2jtlzkqSyllRQxMYZMzb7agAEHXiQGmwkplSUhL3jBUEkAIuI6RYgHUygbtO2rEWCIVRcXErSGw0uzOxA9L7+y9Qz7XC3GQlgzKyjW1mVUOgPhGSMgWvZydctqmGNbIz8011YDLZ+kDl6QuoYgA69G/RawOlwOUwJUR5ct0kkktawPOc5fUbj8Zv13HrqFdkHLMMwvLGVvbwWMk8h9AMwA+jUw2kMrGwOVUPRa4OdmWwJA3Fer1VC+1mF/ihYCdh096wOEf5uhJIIGvG5FtQJ+42McsZIs7SFTqflGZrMumgva19R1XpjgWMolYgEMpKi5FljmQam1yTLvtuUDtphtBiwCxg3dkUl7XKqWuRlNgQDuvrbTjUa7YUiMhQVkVSOl0lzRGQBlAsugtv47qAlxGCZmfVcr83c63HNm+nX2Hhv13VC2ymKxpmHxQAU2JLZXjcZ+w82LgXve+lrV2dplVDPHlzIWQBs2Y9G0fggBzmFgLg666VoCgMzEbKZ3LlgCSWsASL5YguYG2cfF63tvFrEA1pi/HfT01AKlT01AKaRI42lfwVUsxsTZVFzoN+gqSRRa4pkktpSkkvQFbH/ACUn0G/lNBnLDwh5/wAqM8f8lJ9Bv5TQZyw8Ief8qA80gOeIq1iDbfuvcW++1XOT+zG5xdYrX1udy2vcBQbmpdlYJWQBmyBmjGaxa15FA0HaQKKdmYWJGIUM4yjpEAXJuDcAm27trnc5XUTojBVbO4tiTYaOJZHVnMmmVmI0jY2JYDj+FFmzHPOupJI3i991l07N9UNu7SWEpI5ITK6mwJuz82qAgb9Tv4a1oYFvjju1HWNdE3dY/wC1aJczOV47r+yvyywwfCTIxNjzdwNLDnU3EW4XoEwWEj0zKLF2uSBY2gZVJv1M9+ywPAWPOVrWw2IJ0CxM1wdwXKbt1G4a3mrz+KUGMnf0c1usAEnhpurRJ7X+SY/xa7o0uSbDuN7AaYnCn0HEIuvoNV9pQ5HM3/FG/wBZZB/81Lk1i1GGx9j4HxoHZEyyA/d91Py7vFBiiu9JoWX/AJsPEL+uM1fSw69/ozjJRcG+jPMdqSrz8pBuDJIQRxBdiD6Qaic6XqMJx3+muJ1OXpbuA7fzqqDOcG3CrJ01qhhmrRjF6IgdD/nqNFm1cSJsDzh3nKD9PMFb79fTQoIyNLXvpbiSdAB1miR+TuPiw7xyYSYKzRupCF9xFywjuVJFrggWy1Saujs4XW8PdHpJP99Afn4CoueZCsi70s4P8SnMv3gVYddTfQg2IOhHYRwNLCbMmxMnNQRtJIfmoLm2+54KO0kCrnIfTcMgZVYbmAI8xF6krH5GiYYOBMQuWaNBG4uDrH0AwK6EMAG/5q16ggelSpUBTigg4BdLWuTpZlYAXOgDBSANBpanlw8L3zBTcG9za4YDMD1ggC4OmgqESQdRvv8Ane/quPSR2UmMJUaEAi+l9NSPRr+NY+I/VGuxejLMqRnwgpsCmvBWIBHmJVfUKjlwsJ0axuGGrE3DgZg1z0gQo0Nx0eyozPCRci97Ejfxtrrb53+dK6YxLrY6Gx8LQ2O8X6h99Tv7ojZ2ZK0cRLEhSXADnQ5gt7A9drn104jS2W+h18M3PbmvfhvvwquJYbjQ3vceFv0N9+vCnMkNtxsunztL3039hop91+xs7P8AR13NAeC7vG3gMWGbXpEMxNzc3YnjUhhitqFtZxw3OwaQekgE1XzwE2tx032JOoO/tP8ApXRniuLruy5d/UCug38N/wCdPE7onZ2ZYCRix6IsxYa7mtYnz2NvTUSYOBbAKotawvoLJzYIF7XyDLffYWrqGKJhYLoNeI8IA339grvuRLWy/eeoi2/dYnSrJyfKijUVzs4mijYx3I6DZlXTeEYA+gEn0VPzi9Y9Y89cdzJ4vC3HdbL+GlLuOPxR9/Gnn7Dy9zoyr4w9YpGZR84br7xu6/vrg4RDw4Ab23Ddx/zvpJhUG4cLbz76efsT5O5IkgO4g+6uqjjgVTcCxtb0D/T7qlqyvqVddBqemp6kggx/yUn0G/lNBfLHwh5/yo0x/wAlJ9Bv5TQZyx8Ief8AKgArD/Ir1GWAHzGeIH7qK9mKAAi6KL6DdfO4v6qEISeYFt/OQH1Txn8qJv3qMOC0l7btO2Sb9PZXnz5r3O6HX2Lv7RjbDBrbiP5o2/6a19m41jPCCqjnFJbTwSEFgNd179f30L8sdrjEYV7IwRUDhjxJjZrfdW7s2VRJAecSyLY/GITdlsFsNSbZdB/r2RfP3/o59R1GPs/sm5V41pMLilCdEQTZiddObY7xu4b996AdnOGiUGxJWQa9Qax+4316q9P2/hs+ExKhT0oJgFUa9KNtwHzj1dZoP2ZsiPCxiadgiAkrG4zuQyg5Wy7mzXORA2mnbWsWttP/AGysXV+xncksFJKuKyBWWaHmtTaxlj8I6eD+PC/GX9oUkQwspctJNkhWTIegkgIAJ3am5UA3NjuGprrbHKqSeKQQgwqoUaDK5F1TW4ugy9Rvu14VjbN2M0+zcbHGuZw8bKo3koQxA7SAfSazlKUcd/sKClHcefBiezsHD012MKp3Nr1Hca4C6ddML3HXer2UokXZ5B1YdnGtjk5yemxc6wQWLkEkm4Cqtrux1sBcdepA41kSYgkk7qMf2U7ejw085kZE5yIIHd1XL0iTbMRe+m7qFSgwy5D8k0wjNKx7olUEqY+iVG74pXIzE69LTQgDjfXg2hLI7Nh8WWIN+55YQj3F7xksV16gctramgLaHKfmx8S+aU6F0e6gcWUqelfhfzkcKh/fAxBvI7CWwGfNlY23dIeF5t9c03JK2jsgockw/wBsR4bFjLjoIkmVR4UgQjsE6G6HccpJBvpest9pYSKMwpKI4uMGCjbpdr4iTLzp7ePVWNjsY8qoJSG5sEK5AzWPAtvI03dprMmxkagEnokkBtLEjeL8D56x/wCzP/FF3w8XlnqfJPlLBiFCI7iVRrHKRnZRuYMNJD2jXr6yQ59L2Pqt+NfP82LIcZVbMBnDRk9G2uYMLEEaajro05N/tLUhYcc9gbBcQLDjulG7XdnHXqONbaes3iSyYamgk7jyPRJ8aF89r21JsTYE2HE6DiTewNTwsxUFhlPVe9ur0/5131R2ZiVmZ5FRgitaMspUP0QDKtxqPmqd1hpvrRNbvJz1QPDlb/uj9f8A8aXfZ/uvb/8AGqMWwcSo0AH/ADL2e4eqpP3Ni+zq8Jdxtf8AAV4Xjcb3/SPa8Hg+37Za77P9yfr/APjV3Y22OfZhzeWwvfNe9z5hWR+5sVcHTQ3HSTS3+prQ5O7NkieRpAOkN9wbm9zurfh9TiXqJSuutpIx19Phlptwq+lNs26QA38TvNPTV655Q9KmpUAqempUAjSpU9ANSpUqAVPSpqAVKlSoCHH/ACUn0G/lNBnLA9IeejPH/JSfQb+U0G8rvCFAA2EkCxXJsLpr/wAwsPSdPTWxt7GDKXUA7h0hf/aTa2J/iFD0cbvDlRGdiyWRQSSQ6nQDU7jW7t7ZGJePowSX1IAjc6Bs1uiuhOtebJOTS7npwSSeeg23sQXwblnUjueMhb7iYZriw3arajTZs6BYH5wkCNAWC+F0fnWGm+9hxoIwuwsTLHzTQyqWhCFmikRU6MqWN9Xbpg6btatT7R2iCYcPh5QkUfyjYRlzmOO9kEiN4RWwv43pPdCNWu5wzknFfk9Jj2nG9xEMxA1LCyga6m+8b68/5VYzC4uZQXVlUc28hZVDAlXJjv8AN1sCBqb2vvIptafbU6yQvBi8jsvRSAopTKbqzKgLa20JseqsMcmMd5Hif7iX9NdUeGU4+aVZ6FIyUc1YZYiOFInSEoX5i2QHNmESSklrajKscW4jTrvWJgtoYmLCTYmKcxkuFMaKgS4kRc12JbNZia0NlckpoJYCsGItLhJ+dzRmySPhpOhooy9IhQG1vVePkfL+75XODlOIMl0+Kk5wLzsA0Fr2y85w3XqmrCNpJ2q69hF1Gu5qY3Y0M+JxDPGtgsDlrEC74eO46NukWJbtI89YW0dh4VYzKsbgNK8YGf5MBC6tfpB9xXhuOtaO2cLtPEGMnDYiOKNY1ChCGYhVQuwU3JsD12A7ary7M2isToIcQyyAKVMcraAhha401H+eHNJtSSr5OqGhGWk57ljoA2ddbg+iuZQp0vpf021rTfknj/IsV/cS/prnvTx/kWJ/uJf01qcpFDMK6bEAandx81qlXkrtAf8AosV/cS/ppm5K7QP/AKLFf3Ev6aWCzhtvyQkofjEUsupN9CQCD6Nx+6t6XYckmFXGZQ0E9xJvvHIshiDHzkAX7R2XHYuSeO1vg8VvP+wl/TXsPIvYbS7IfBzq0Rfn0s6lWXOxKtlaxNibjzVn4cbtI18WSx0PPdi7KlfmIozeVXKDTwlJO823KLHsydlevcmeSmHwqC0MXOHWSRUBJYkkgMRfKL6Csr9nnIYbPDSSzc/OwCh7nLHHoSiBjfU7zxAGg1ox5wdY9dWjGslJ6jljoPSpucHWPXXE2JRFZ3dVVQWZmIAVQLkknQADW9XMySnNY/ffs/y7CfaIf1U3ffs/y7C/aIv1VNMGxSrI779n+XYT7RD+qm779n+XYX7RF+qlMGxT1j99+z/LsJ9oh/VS779n+XYT7RD+qlMGvSrH779n+XYX7RF+qn779n+XYT7RD+qlMGvSrI779n+XYT7RD+qm779n+XYX7RF+qlMGxSrI779n+XYT7RD+qm779n+XYX7RF+qlMGxSrI779n+XYT7RD+ql337P8uwn2iH9VKYNelWP337P8uwv2iL9VLvv2f5dhftEX6qUwbFKsfvv2f5dhftEX6qfvv2f5dhPtEP6qUwaOP8AkpPoN/KaDeV56Q89bmM5W7PMbgY3C3KNYc/F4p/irA5XOMw89KBlckcCEaKQ6AMup7Tb86P+6E8dfWK822BtoqgFq1Ryh/h/CqRjXItKW4NO6E8ZfWKXdCeMvrFBh5Q/w/hTHlB/D+FWKhp3QnjL6xS7oTxl9YoK/f8A/D+FP3w/w/hQBp3QnjL6xS7oTxl9YoN74f4fwqpjeURsej+FAa/Ljl3HgObURiV5ATbnAgVVIFy1mNyToLcDruuM/DMfJE+0/wCFWTtDlC19BVPvgerqq5FWEXwzHyRPtP8AhUvhmPkifaf8KhxeUL0u+B6nHoRkI/hmPkifaf8ACpfDMfJE+0/4VDZ5RP1U/fA9R5fQZCL4Zj5In2n/AAqXwz/8Kn2n/CodHKJ9+tdryokHXTy+hOQjg/bOmYc5hQqX6TLOGIHEhTGM3muK9JGJQ651t5xXkezOVEl+NEuG5UNYaH7qiVdCUG/dCeOvrFUOUbCTCYlEIZngmVVBFyzRMFA7SSBQ6eVDdR+6s3bG3Sw3VCAJYPk3iFUiTASSEnRs5S2g06J1/wA+maPk9MDf92ynpXAMxtbTo9uoOp66q4vGXO6oO6OytLKUaK8npsq32dKWAAJEpUGwGtgd5OY9mm/g45Oy7js2Yb7ESkkEjTQkXF7aX4G2+s7unspDE9lLFGj+4JuOzJPm3tMw3Cxt1X/HWquL5L4piObwcsYtqM2e5udbk6aWFuyoTiuyopMRfhSxRJ3p43yWT1D30u9PG+Syeoe+q3Odn3Uud7KWKLkPJXGBgWwsjKDqtwtx1XB0rrvWxee/ckuW/gXG7qzfnaqPODqp+etwpYoty8lcYWJXCyKCTZdDYcBcnXz1x3p43yWT1D31X5/srnneyp3Ci13p43yWT1D30u9PG+Syeoe+q2elzvZUWKLPenjfJZPUPfS708b5LJ6h76q892U5k7KWKLPenjfJZPUPfS708b5LJ6h76rZ+wUs/YKncKJ5+SeNyt/ZpNx4Dq89b+3eUuYjXjQwZOyq2IkuaiTslI//Z" style="width: 100%;height: 250px">
        </div>

    </div>
</section>


<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>SẢN PHẨM</h2>
                </div>

            </div>
        </div>
        <div class="row featured__filter" id="content">
                        <c:forEach items="${list}" var="pro">
                        <div class="loadp col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                            <div class="featured__item">
                                <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-1.jpg">
                                    <img src="${pro.img}">
                                    <ul class="featured__item__pic__hover">
<%--                                        <li><a href="#"><i class="fa fa-heart"></i></a></li>--%>
                                        <li><a href="DetailsController?pid=${pro.id}"><i class="fa fa-retweet"></i></a></li>
                                        <li><a href="add-to-cart?bid=${pro.id}"><i class="fa fa-shopping-cart"></i></a></li>
                                    </ul>
                                </div>
                                <div class="featured__item__text">
                                    <h6><a href="DetailsController?pid=${pro.id}">${pro.name}</a></h6>
                                    <h5>${pro.price} VND</h5>
                                </div>
                            </div>
                        </div>
                        </c:forEach>






        </div>
        <div class="d-flex justify-content-center">
            <button class="btn btn-primary" onclick="loadMore()">
                Load More
            </button>
        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="../../img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="../../img/banner/banner-2.jpg" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
    <div class="section-title">
        <h4 class="tit-box">
            <a href="">Xem Thêm</a>
        </h4>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Mới Nhất</h4>
                    <c:forEach items="${ListNew}" var="news">
                    <div class="new">

                        <div class="n">
                            <a href="DetailsController?pid=${news.id}" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="${news.img}" alt="">
                                </div>
                                <div class="latest-product__item__text">
                                    <h6>${news.name}</h6>
                                    <span>${news.price} VND</span>
                                </div>
                            </a>


                        </div>

                    </div>
                    </c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Giảm giá </h4>
                    <c:forEach items="${listSale}" var="sale" begin="1" end="6">
                    <div class="sale">

                        <div class="sl">
                            <a href="DetailsController?pid=${sale.id}" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="${sale.img}" alt="">
                                </div>
                                <div class="discount__precent">${sale2.percent}</div>
                                <div class="latest-product__item__text">
                                    <h6>${sale.name}</h6>
                                    <span class="discount">${sale.price} VND</span>
                                    <span>${sale.price - (sale2.priceSale * sale.price)}VND</span>
                                </div>
                            </a>
                        </div>

                    </div></c:forEach>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Ngẫu nhiên</h4>
                    <c:forEach items="${rdPro}" var="rdPro">
                        <div class="new">

                            <div class="n">
                                <a href="DetailsController?pid=${rdPro.id}" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${rdPro.img}" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>${rdPro.name}</h6>
                                        <span>${rdPro.price} VND</span>
                                    </div>
                                </a>


                            </div>

                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>BÀI BLOG MỚI NHẤT</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <c:forEach items="${listBlog}" var="blog" end="2">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="${blog.image}" alt="" style="height: 350px">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> ${blog.dateCreate}</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="detailsBlog?blogId=${blog.id}">${blog.title}</a></h5>
                        <p>${blog.shortcut} </p>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</section>
<!-- Blog Section End -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script>
<script>
    function loadMore(){
        var amount = document.getElementsByClassName("loadp").length;
        $.ajax({
            url: "/BookStore/load",
            type: "get", //send it through get method
            data:{
                exits: amount
            },
            success: function(data) {


                var row = document.getElementById("content");
                row.innerHTML += data;
            },
            error: function(xhr) {
                //Do Something to handle error
            }
        });


    }
</script>
</body>
</html>
