void leaf() {
  __asm__("rorl %cl, %ebx");
  }

void main() {
  leaf();
}