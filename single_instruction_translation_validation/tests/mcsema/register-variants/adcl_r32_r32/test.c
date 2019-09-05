void leaf() {
  __asm__("adcl %ecx, %ebx");
  }

void main() {
  leaf();
}