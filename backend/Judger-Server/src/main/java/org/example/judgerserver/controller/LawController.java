package org.example.judgerserver.controller;

import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.net.MalformedURLException;
import java.nio.file.Path;
import java.nio.file.Paths;

@RestController
@RequestMapping("/laws")
public class LawController {

    @GetMapping
    public ResponseEntity<org.springframework.core.io.Resource> getLawFile(
            @RequestParam String lawType,
            @RequestParam String fileType
    ) throws MalformedURLException {
        Path filePath;
        MediaType mediaType;

        // Determine media type based on mediaType
        if ("xml".equalsIgnoreCase(fileType)) {
            mediaType = MediaType.APPLICATION_XML;
        } else if ("pdf".equalsIgnoreCase(fileType)) {
            mediaType = MediaType.APPLICATION_PDF;
        } else {
            return ResponseEntity.badRequest().build();
        }

        // Determine file based on lawType
        if ("krivicni_zakonik".equalsIgnoreCase(lawType)) {
            filePath = Paths.get("data/laws/krivicni_zakonik." + fileType);
        } else if ("zakonik_o_krivicnom_postupku".equalsIgnoreCase(lawType)) {
            filePath = Paths.get("data/laws/zakonik_o_krivicnom_postupku." + fileType);
        } else {
            return ResponseEntity.badRequest().build();
        }

        org.springframework.core.io.Resource fileResource = new UrlResource(filePath.toUri());
        if (!fileResource.exists()) {
            return ResponseEntity.notFound().build();
        }

        return ResponseEntity.ok()
                .contentType(mediaType)
                .header(HttpHeaders.CONTENT_DISPOSITION, "inline; filename=" + filePath.getFileName())
                .body(fileResource);
    }
}
