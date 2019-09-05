void leaf() {
  __asm__("movzwl %cx, %ebx");
  }

void main() {
  leaf();
}