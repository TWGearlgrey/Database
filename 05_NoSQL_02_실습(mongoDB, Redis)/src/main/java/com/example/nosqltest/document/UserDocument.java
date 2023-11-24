package com.example.nosqltest.document;

import jakarta.validation.constraints.*;
import lombok.Data;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Data
@Document(value = "user")
public class UserDocument {

    @Id
    private String _id;

    @NotBlank // null, "", " " 모두 허용 안 함.
    @Pattern(regexp = "^[a-z0-9]{4,10}$",
            message = "영어 소문자와 숫자로 4~10자만 입력가능합니다.")
    private String uid;

    @NotNull // null 허용 안 함.
    @Pattern(regexp = "^[가-힣]{2,10}$",
            message = "이름은 한글 2~10자만 입력가능합니다.")
    private String name;

    @Min(1)
    @Max(100)
    private int age;

    @Email
    private String email;

    @NotEmpty // null 허용, "", " " 허용 안 함.
    private String addr;
}