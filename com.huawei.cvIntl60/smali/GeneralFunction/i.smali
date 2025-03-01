.class public LGeneralFunction/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(D)[F
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 54
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 55
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 56
    const/16 v2, 0x10

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v5, v2, v3

    const/4 v3, 0x1

    aput v4, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    aput v4, v2, v3

    const/4 v3, 0x5

    aput v0, v2, v3

    const/4 v3, 0x6

    aput v1, v2, v3

    const/4 v3, 0x7

    aput v4, v2, v3

    const/16 v3, 0x8

    aput v4, v2, v3

    const/16 v3, 0x9

    neg-float v1, v1

    aput v1, v2, v3

    const/16 v1, 0xa

    aput v0, v2, v1

    const/16 v0, 0xb

    aput v4, v2, v0

    const/16 v0, 0xc

    aput v4, v2, v0

    const/16 v0, 0xd

    aput v4, v2, v0

    const/16 v0, 0xe

    aput v4, v2, v0

    const/16 v0, 0xf

    aput v5, v2, v0

    return-object v2
.end method

.method public static a(FFF)[F
    .locals 4

    .prologue
    .line 90
    float-to-double v0, p2

    invoke-static {v0, v1}, LGeneralFunction/i;->c(D)[F

    move-result-object v0

    float-to-double v2, p1

    invoke-static {v2, v3}, LGeneralFunction/i;->b(D)[F

    move-result-object v1

    float-to-double v2, p0

    invoke-static {v2, v3}, LGeneralFunction/i;->a(D)[F

    move-result-object v2

    invoke-static {v1, v2}, LGeneralFunction/i;->a([F[F)[F

    move-result-object v1

    invoke-static {v0, v1}, LGeneralFunction/i;->a([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method public static a([F)[F
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x9

    .line 148
    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 149
    aget v1, p0, v6

    float-to-double v2, v1

    aget v1, p0, v7

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v1, v2

    neg-float v1, v1

    aput v1, v0, v8

    .line 150
    const/4 v1, 0x1

    const/16 v2, 0x8

    aget v2, p0, v2

    neg-float v2, v2

    float-to-double v2, v2

    aget v4, p0, v6

    aget v5, p0, v6

    mul-float/2addr v4, v5

    aget v5, p0, v7

    aget v6, p0, v7

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    aput v2, v0, v1

    .line 151
    const/4 v1, 0x2

    const/4 v2, 0x4

    aget v2, p0, v2

    float-to-double v2, v2

    aget v4, p0, v8

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    double-to-float v2, v2

    neg-float v2, v2

    aput v2, v0, v1

    .line 152
    return-object v0
.end method

.method public static a([F[F)[F
    .locals 37

    .prologue
    .line 95
    const/4 v1, 0x0

    aget v1, p0, v1

    .line 96
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 97
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 98
    const/4 v4, 0x3

    aget v4, p0, v4

    .line 99
    const/4 v5, 0x4

    aget v5, p0, v5

    .line 100
    const/4 v6, 0x5

    aget v6, p0, v6

    .line 101
    const/4 v7, 0x6

    aget v7, p0, v7

    .line 102
    const/4 v8, 0x7

    aget v8, p0, v8

    .line 103
    const/16 v9, 0x8

    aget v9, p0, v9

    .line 104
    const/16 v10, 0x9

    aget v10, p0, v10

    .line 105
    const/16 v11, 0xa

    aget v11, p0, v11

    .line 106
    const/16 v12, 0xb

    aget v12, p0, v12

    .line 107
    const/16 v13, 0xc

    aget v13, p0, v13

    .line 108
    const/16 v14, 0xd

    aget v14, p0, v14

    .line 109
    const/16 v15, 0xe

    aget v15, p0, v15

    .line 110
    const/16 v16, 0xf

    aget v16, p0, v16

    .line 111
    const/16 v17, 0x0

    aget v17, p1, v17

    .line 112
    const/16 v18, 0x1

    aget v18, p1, v18

    .line 113
    const/16 v19, 0x2

    aget v19, p1, v19

    .line 114
    const/16 v20, 0x3

    aget v20, p1, v20

    .line 115
    const/16 v21, 0x4

    aget v21, p1, v21

    .line 116
    const/16 v22, 0x5

    aget v22, p1, v22

    .line 117
    const/16 v23, 0x6

    aget v23, p1, v23

    .line 118
    const/16 v24, 0x7

    aget v24, p1, v24

    .line 119
    const/16 v25, 0x8

    aget v25, p1, v25

    .line 120
    const/16 v26, 0x9

    aget v26, p1, v26

    .line 121
    const/16 v27, 0xa

    aget v27, p1, v27

    .line 122
    const/16 v28, 0xb

    aget v28, p1, v28

    .line 123
    const/16 v29, 0xc

    aget v29, p1, v29

    .line 124
    const/16 v30, 0xd

    aget v30, p1, v30

    .line 125
    const/16 v31, 0xe

    aget v31, p1, v31

    .line 126
    const/16 v32, 0xf

    aget v32, p1, v32

    .line 127
    const/16 v33, 0x10

    move/from16 v0, v33

    new-array v0, v0, [F

    move-object/from16 v33, v0

    const/16 v34, 0x0

    mul-float v35, v1, v17

    mul-float v36, v2, v21

    add-float v35, v35, v36

    mul-float v36, v3, v25

    add-float v35, v35, v36

    mul-float v36, v4, v29

    add-float v35, v35, v36

    aput v35, v33, v34

    const/16 v34, 0x1

    mul-float v35, v1, v18

    mul-float v36, v2, v22

    add-float v35, v35, v36

    mul-float v36, v3, v26

    add-float v35, v35, v36

    mul-float v36, v4, v30

    add-float v35, v35, v36

    aput v35, v33, v34

    const/16 v34, 0x2

    mul-float v35, v1, v19

    mul-float v36, v2, v23

    add-float v35, v35, v36

    mul-float v36, v3, v27

    add-float v35, v35, v36

    mul-float v36, v4, v31

    add-float v35, v35, v36

    aput v35, v33, v34

    const/16 v34, 0x3

    mul-float v1, v1, v20

    mul-float v2, v2, v24

    add-float/2addr v1, v2

    mul-float v2, v3, v28

    add-float/2addr v1, v2

    mul-float v2, v4, v32

    add-float/2addr v1, v2

    aput v1, v33, v34

    const/4 v1, 0x4

    mul-float v2, v5, v17

    mul-float v3, v6, v21

    add-float/2addr v2, v3

    mul-float v3, v7, v25

    add-float/2addr v2, v3

    mul-float v3, v8, v29

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/4 v1, 0x5

    mul-float v2, v5, v18

    mul-float v3, v6, v22

    add-float/2addr v2, v3

    mul-float v3, v7, v26

    add-float/2addr v2, v3

    mul-float v3, v8, v30

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/4 v1, 0x6

    mul-float v2, v5, v19

    mul-float v3, v6, v23

    add-float/2addr v2, v3

    mul-float v3, v7, v27

    add-float/2addr v2, v3

    mul-float v3, v8, v31

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/4 v1, 0x7

    mul-float v2, v5, v20

    mul-float v3, v6, v24

    add-float/2addr v2, v3

    mul-float v3, v7, v28

    add-float/2addr v2, v3

    mul-float v3, v8, v32

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0x8

    mul-float v2, v9, v17

    mul-float v3, v10, v21

    add-float/2addr v2, v3

    mul-float v3, v11, v25

    add-float/2addr v2, v3

    mul-float v3, v12, v29

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0x9

    mul-float v2, v9, v18

    mul-float v3, v10, v22

    add-float/2addr v2, v3

    mul-float v3, v11, v26

    add-float/2addr v2, v3

    mul-float v3, v12, v30

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0xa

    mul-float v2, v9, v19

    mul-float v3, v10, v23

    add-float/2addr v2, v3

    mul-float v3, v11, v27

    add-float/2addr v2, v3

    mul-float v3, v12, v31

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0xb

    mul-float v2, v9, v20

    mul-float v3, v10, v24

    add-float/2addr v2, v3

    mul-float v3, v11, v28

    add-float/2addr v2, v3

    mul-float v3, v12, v32

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0xc

    mul-float v2, v13, v17

    mul-float v3, v14, v21

    add-float/2addr v2, v3

    mul-float v3, v15, v25

    add-float/2addr v2, v3

    mul-float v3, v16, v29

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0xd

    mul-float v2, v13, v18

    mul-float v3, v14, v22

    add-float/2addr v2, v3

    mul-float v3, v15, v26

    add-float/2addr v2, v3

    mul-float v3, v16, v30

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0xe

    mul-float v2, v13, v19

    mul-float v3, v14, v23

    add-float/2addr v2, v3

    mul-float v3, v15, v27

    add-float/2addr v2, v3

    mul-float v3, v16, v31

    add-float/2addr v2, v3

    aput v2, v33, v1

    const/16 v1, 0xf

    mul-float v2, v13, v20

    mul-float v3, v14, v24

    add-float/2addr v2, v3

    mul-float v3, v15, v28

    add-float/2addr v2, v3

    mul-float v3, v16, v32

    add-float/2addr v2, v3

    aput v2, v33, v1

    return-object v33
.end method

.method public static b(D)[F
    .locals 8

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 66
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 67
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 68
    const/16 v2, 0x10

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v5, v2, v3

    const/4 v3, 0x2

    neg-float v4, v1

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v5, v2, v3

    const/4 v3, 0x4

    aput v5, v2, v3

    const/4 v3, 0x5

    aput v6, v2, v3

    const/4 v3, 0x6

    aput v5, v2, v3

    const/4 v3, 0x7

    aput v5, v2, v3

    const/16 v3, 0x8

    aput v1, v2, v3

    const/16 v1, 0x9

    aput v5, v2, v1

    const/16 v1, 0xa

    aput v0, v2, v1

    const/16 v0, 0xb

    aput v5, v2, v0

    const/16 v0, 0xc

    aput v5, v2, v0

    const/16 v0, 0xd

    aput v5, v2, v0

    const/16 v0, 0xe

    aput v5, v2, v0

    const/16 v0, 0xf

    aput v6, v2, v0

    return-object v2
.end method

.method public static c(D)[F
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 78
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 79
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 80
    const/16 v2, 0x10

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v3, 0x2

    aput v4, v2, v3

    const/4 v3, 0x3

    aput v4, v2, v3

    const/4 v3, 0x4

    neg-float v1, v1

    aput v1, v2, v3

    const/4 v1, 0x5

    aput v0, v2, v1

    const/4 v0, 0x6

    aput v4, v2, v0

    const/4 v0, 0x7

    aput v4, v2, v0

    const/16 v0, 0x8

    aput v4, v2, v0

    const/16 v0, 0x9

    aput v4, v2, v0

    const/16 v0, 0xa

    aput v5, v2, v0

    const/16 v0, 0xb

    aput v4, v2, v0

    const/16 v0, 0xc

    aput v4, v2, v0

    const/16 v0, 0xd

    aput v4, v2, v0

    const/16 v0, 0xe

    aput v4, v2, v0

    const/16 v0, 0xf

    aput v5, v2, v0

    return-object v2
.end method
