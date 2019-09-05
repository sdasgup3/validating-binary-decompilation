void leaf() {
  __asm__("vpsraw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}