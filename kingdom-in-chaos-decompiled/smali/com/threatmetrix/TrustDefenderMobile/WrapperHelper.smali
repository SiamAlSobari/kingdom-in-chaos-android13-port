.class Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;
.super Ljava/lang/Object;
.source "WrapperHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    .line 85
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 89
    :catch_0
    move-exception v2

    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    goto :goto_0

    .line 91
    :catch_1
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " getClass failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 101
    if-nez p0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 116
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "ret":Ljava/lang/reflect/Field;
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .param p0, "c"    # Ljava/lang/Class;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Class;

    .prologue
    .line 18
    if-nez p0, :cond_0

    .line 19
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 24
    .local v0, "temp":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 31
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method static getValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 2
    .param p0, "c"    # Ljava/lang/Object;
    .param p1, "f"    # Ljava/lang/reflect/Field;

    .prologue
    .line 121
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 122
    :cond_0
    const/4 v0, 0x0

    .line 139
    :goto_0
    return-object v0

    .line 124
    :cond_1
    const/4 v0, 0x0

    .line 127
    .local v0, "ret":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static varargs invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p0, "c"    # Ljava/lang/Object;
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Method;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 38
    const/4 v3, 0x0

    .line 39
    .local v3, "returnValue":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_0

    .line 41
    const/4 v1, 0x0

    .line 44
    .local v1, "invokeFailed":Z
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v2

    .line 45
    .local v2, "ret":Ljava/lang/Object;
    move-object v3, v2

    .line 73
    .end local v2    # "ret":Ljava/lang/Object;
    .end local v3    # "returnValue":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v1, :cond_0

    .line 77
    .end local v1    # "invokeFailed":Z
    :goto_1
    return-object v3

    .line 47
    .restart local v1    # "invokeFailed":Z
    .restart local v3    # "returnValue":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invoke failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 52
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v0

    .line 54
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invoke failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 57
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invoke failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invoke failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 65
    const/4 v1, 0x1

    .line 71
    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/threatmetrix/TrustDefenderMobile/WrapperHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " invoke failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 77
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "invokeFailed":Z
    .end local v3    # "returnValue":Ljava/lang/Object;, "TT;"
    :cond_0
    const/4 v3, 0x0

    goto/16 :goto_1
.end method
