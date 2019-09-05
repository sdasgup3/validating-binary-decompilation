void leaf() {
  __asm__("vpsllw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}