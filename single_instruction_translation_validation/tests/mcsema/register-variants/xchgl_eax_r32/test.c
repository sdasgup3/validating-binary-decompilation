void leaf() {
  __asm__("xchgl %ebx, %eax");
  }

void main() {
  leaf();
}