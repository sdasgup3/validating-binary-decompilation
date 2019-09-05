void leaf() {
  __asm__("pdepl (%rdx), %ecx, %ebx");
  }

void main() {
  leaf();
}