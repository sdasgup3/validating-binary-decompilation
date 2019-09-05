void leaf() {
  __asm__("vpsllq -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}