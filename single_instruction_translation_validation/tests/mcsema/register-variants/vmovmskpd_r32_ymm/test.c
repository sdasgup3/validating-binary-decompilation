void leaf() {
  __asm__("vmovmskpd %ymm1, %ebx");
  }

void main() {
  leaf();
}